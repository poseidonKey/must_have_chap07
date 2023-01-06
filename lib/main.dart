import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHome(),
    );
  }
}

// ignore: must_be_immutable
class MyHome extends StatelessWidget {
  WebViewController? controller;
  MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Code Factory"),
        actions: [
          IconButton(
              onPressed: () {
                if (controller != null) {
                  controller!.loadUrl("https://blog.codefactory.ai");
                }
              },
              icon: const Icon(Icons.home)),
          IconButton(
            onPressed: () async {
              if (controller != null && await controller!.canGoBack()) {
                controller!.goBack();
              }
            },
            icon: const Icon(Icons.arrow_left_sharp),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        initialUrl: "https://blog.codefactory.ai",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
