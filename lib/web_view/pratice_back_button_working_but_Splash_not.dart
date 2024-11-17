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
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds before navigating to the WebView screen
    Timer(Duration(seconds: 3), () {
      // After the splash screen, navigate to WebViewScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WebViewScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
    );
  }
}

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  // Initialize the WebViewController
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
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Alert'),
              content: const Text('Do you want to exit'),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('No')),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text('Exit')),
              ],
            );
          },
        );
        return Future.value(value ?? false);
      },
      child: Scaffold(
        appBar: AppBar(title: Text('WebView')),
        body: WebViewWidget(controller: _controller), // Pass controller to WebViewWidget
      ),
    );
  }
}
