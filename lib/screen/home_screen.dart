import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// final homeUrl = Uri.parse('https://blog.codefactory.ai');
final homeUrl = Uri.parse('http://43.201.221.183:9223/app/main');

class HomeScreen extends StatelessWidget {
  /// final result = WebViewController().loadRequest();
  ///
  /// final controller = WebViewController();
  /// final result = controller.loadRequest();
  ///
  /// final controller2 = WebViewController()..loadRequest();
  ///
  /// final controller2 = WebViewController();
  /// controller2.loadRequest();

  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('app bar'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                controller.loadRequest(homeUrl);
              },
              icon: Icon(
                Icons.home,
              ),
          ),
        ],
      ),*/
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
