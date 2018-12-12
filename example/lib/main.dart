import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_rich_text/real_rich_text.dart';
import 'package:real_rich_text_example/rich.dart';
import 'package:real_rich_text_example/richless.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    List<Widget> items = [];
    items.add(_buildOll());
    items.add(_buildOll());

    items.add(Text("======="));

    items.add(Rich());
    items.add(Rich());

    items.add(Text("======="));

//    items.add(RichLess());
//    items.add(RichLess());

    for (int i=0; i<1000; i++) {
//      if (i % 10 == 0) {
//        items.add(Rich(key: Key("index $i"),));
//      }

      items.add(new Container(
        child: Text('index $i'),
      ));
    }

    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        });
  }


  Widget _buildOll() {
    return Center(
      child: RealRichText([
        TextSpan(
          text: "A Text Link",
          style: TextStyle(color: Colors.red, fontSize: 14),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              debugPrint("Link Clicked.");
            },
        ),
        ImageSpan(
          AssetImage("packages/real_rich_text/images/emoji_9.png"),
          imageWidth: 24,
          imageHeight: 24,
        ),
        ImageSpan(AssetImage("packages/real_rich_text/images/emoji_10.png"),
            imageWidth: 24,
            imageHeight: 24,
            margin: EdgeInsets.symmetric(horizontal: 10)),
        TextSpan(
          text: "哈哈哈",
          style: TextStyle(color: Colors.yellow, fontSize: 14),
        ),
        TextSpan(
          text: "@Somebody",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              debugPrint("Link Clicked");
            },
        ),
        TextSpan(
          text: " #RealRichText# ",
          style: TextStyle(color: Colors.blue, fontSize: 14),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              debugPrint("Link Clicked");
            },
        ),
        TextSpan(
          text: "showing a bigger image",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        ImageSpan(AssetImage("packages/real_rich_text/images/emoji_10.png"),
            imageWidth: 24,
            imageHeight: 24,
            margin: EdgeInsets.symmetric(horizontal: 5)),
        TextSpan(
          text: "and seems working perfect……",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ]),
    );
  }
}
