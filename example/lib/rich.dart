import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_rich_text/real_rich_text.dart';


class Rich extends StatefulWidget {

  Key key;

  Rich({this.key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => RichState();

}

class RichState extends State<Rich> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildOll();
  }

  void dispose() {
    // scroll bottom disappear dispose
    super.dispose();
  }

  Widget _buildOll() {
    return RealRichText([
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
      ImageSpan(AssetImage("images/icon_dt.png"),
          imageWidth: 18,
          imageHeight: 18,
          margin: EdgeInsets.only(left: 12)),
      TextSpan(
        text: "and seems working perfect……",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    ], key: widget.key,);
  }

}