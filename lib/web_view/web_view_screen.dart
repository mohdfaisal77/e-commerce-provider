import 'package:flutter/material.dart';
import 'dart:async'; // for Timer
import 'package:webview_flutter/webview_flutter.dart';
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
        // Uncomment this part if you want to handle HTTP errors
        // onHttpError: (HttpError error) {
        //   print("HTTP error: ${error.statusCode}");
        // },
        onWebResourceError: (WebResourceError error) {
          print("Web resource error: ${error.errorCode}");
        },
      ))
      ..loadRequest(Uri.parse('https://gropto.com/'));
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
      child:
      Scaffold(
        // appBar: AppBar(title: Text('WebView')),
        body: WebViewWidget(controller: _controller), // Pass controller to WebViewWidget
      ),
    );
  }
}

//import 'package:flutter/material.dart';
// import 'package:gropto/helper/app_images.dart';
// import 'dart:async'; // for Timer
// import 'package:webview_flutter/webview_flutter.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   late WebViewController _controller;
//   bool isSplashFinished = false;
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize WebView in the background as soon as the splash screen appears
//     _initializeWebView();
//
//     // Wait for 3 seconds before showing the WebView screen
//     Timer(Duration(seconds: 8), () {
//       setState(() {
//         isSplashFinished = true;
//       });
//     });
//   }
//
//   // Initialize the WebViewController in the background (without showing it)
//   void _initializeWebView() {
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(NavigationDelegate(
//         onPageStarted: (String url) {
//           print("Page started: $url");
//         },
//         onPageFinished: (String url) {
//           print("Page finished: $url");
//         },
//         onWebResourceError: (WebResourceError error) {
//           print("Web resource error: ${error.errorCode}");
//         },
//       ))
//       ..loadRequest(Uri.parse('https://gropto.com/'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // The WebView that is running in the background
//           WillPopScope(
//             onWillPop: () async {
//               final value = await showDialog<bool>(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       // backgroundColor: Colors.deepOrange,
//                       title: const Text('Alert'),
//                       content: const Text('Do you want to exit'),
//                       actions: [
//                      ElevatedButton(
//                               onPressed: () => Navigator.of(context).pop(false),
//                               child: Text('No')),
//
//                         ElevatedButton(
//                             onPressed: () => Navigator.of(context).pop(true),
//                             child: Text('Exit'))
//                       ],
//                     );
//                   });
//               if (value != null) {
//                 return Future.value(value);
//               } else {
//                 return Future.value(false);
//               }
//             },
//             child: Scaffold(
//               appBar: AppBar(title: Text('WebView')),
//               body: WebViewWidget(
//                   controller:
//                       _controller), // Pass the controller to WebViewWidget
//             ),
//           ),
//
//           // The Splash Screen which is shown over the WebView
//           if (!isSplashFinished)
//             Positioned.fill(
//               child: Container(
//                 color: Colors.white,
//                 child: Center(
//                   child: Image(
//                     width: 100,
//                     height: 30,
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                       AppImages.app_logo,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }