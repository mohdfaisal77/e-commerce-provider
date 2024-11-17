import 'package:flutter/material.dart';
import 'dart:async'; // for Timer
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late WebViewController _controller;
  bool isSplashFinished = false;

  @override
  void initState() {
    super.initState();
    // Initialize WebView in the background as soon as the splash screen appears
    _initializeWebView();

    // Wait for 3 seconds before showing the WebView screen
    Timer(Duration(seconds: 8), () {
      setState(() {
        isSplashFinished = true;
      });
    });
  }

  // Initialize the WebViewController in the background (without showing it)
  void _initializeWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (String url) {
          print("Page started: $url");
        },
        onPageFinished: (String url) {
          print("Page finished: $url");
        },
        onWebResourceError: (WebResourceError error) {
          print("Web resource error: ${error.errorCode}");
        },
      ))
      ..loadRequest(Uri.parse('https://gropto.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // The WebView that is running in the background
          WebViewWidget(controller: _controller),

          // The Splash Screen which is shown over the WebView
          if (!isSplashFinished)
            Positioned.fill(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web, // Splash screen icon
                        size: 100,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final WebViewController controller;

  WebViewScreen({required this.controller});

  @override
  Widget build(BuildContext context) {return WillPopScope(
    onWillPop: ()async{
      final value =await showDialog<bool>(context: context, builder: (context){
        return AlertDialog(
          title: const Text('Alert'),
          content: const Text('Do you want to exit'),
          actions: [
            ElevatedButton(onPressed: ()=>Navigator.of(context).pop(false), child: Text('No')),

            ElevatedButton(onPressed: ()=>Navigator.of(context).pop(true), child: Text('Exit'))
          ],
        );
      });
      if(value != null){
        return Future.value(value);
      }else{
        return Future.value(false);
      }
    },
    child: Scaffold(
      appBar: AppBar(title: Text('WebView')),
      body: WebViewWidget(controller: controller), // Pass the controller to WebViewWidget
    ),
  );
  }
}
