import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageRichintm extends StatefulWidget {
  const PageRichintm({
    Key? key,
  }) : super(key: key);

  @override
  _StateRichintm createState() => _StateRichintm();
}

class _StateRichintm extends State<PageRichintm> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "Richintm",
      },
      isUserIdPreferableIfExists: true,
    );

    unawaited(
      Future.delayed(
        Duration.zero,
        () async {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          width: double.maxFinite,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF465262).withOpacity(1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () async {
                    await Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageIntermediate(),
                      ),
                    );
                  },
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageIntermediate(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Icon(
                        MdiIcons.fromString('keyboard-backspace'),
                        size: 30,
                        color: Color(0xFFFFFFFF).withOpacity(1),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 20,
                ),
                child: Text(r'''Rich Text Widget''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    maxLines: 1),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF465262).withOpacity(1),
            ),
            child: NotificationListener<ScrollEndNotification>(
              onNotification: (final scrollEnd) {
                final metrics = scrollEnd.metrics;
                if (metrics.atEdge) {
                  final isTop = metrics.pixels == 0;
                  if (isTop) {
                  } else {}
                }
                return true;
              },
              child: ListView.builder(
                reverse: false,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: this.datasets['null'].length > 0
                    ? this.datasets['null'].length
                    : 0,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Text(r'''What is RichText Widget''',
                            style: GoogleFonts.arimaMadurai(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                            r'''RichText is a widget in Flutter used for displaying a paragraph of text with multiple styles. Inside the widget, you can have different styles by having multiple TextSpan widgets, each can set its own style. To have different styles, the common implementation is by having an outer TextSpan with a default style and some inner TextSpan widgets.''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 150),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Text(r'''Properties:
children: The widgets below this widget in the tree.
hashCode: The hash code for this object.
key: Controls how one widget replaces another widget in the tree.
runtimeType: A representation of the runtime type of the object.
text: The text to display in this widget.
textAlign: How the text should be aligned horizontally.
local: This property takes in Locale class as the object. It controls the font used for the text depending on the language used.
maxLines: The maxLines property takes in an int value as the object. It controls the maximum number of lines that can be there for the text to expand and wrap.
overflow: TextOverflow enum is the object given to its class it controls the text in case of overflow.
softWrap: This property takes in a boolean value as the object. If it is set to false the gulphs in the text become wider.
textDirection: This property takes in TextDirection class as the object to decide the direction of the text. It can be either from left-to-right or right-to-left.
textHightBehaviour: TextHeightBehavior class is the object given to this property. It controls how the text will be highlighted.
textScaleFactor: This property is taken in a double value as the object to determine the relative size of the font.
textWidthBasis: TextWidthBasis enum is the object of this property. It controls the width of a single line of text being measured.''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(r'''Syntax ''',
                            style: GoogleFonts.arimaMadurai(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          top: 10,
                          right: 10,
                          bottom: 20,
                        ),
                        child: Text(r'''RichText(
{Key key,
@required InlineSpan text,
TextAlign textAlign: TextAlign.start, 
TextDirection textDirection, 
bool softWrap: true, 
TextOverflow overflow: 
TextOverflow.clip, 
double textScaleFactor: 1.0, 
int maxLines, 
Locale locale, 
StrutStyle strutStyle, 
TextWidthBasis textWidthBasis: TextWidthBasis.parent, 
TextHeightBehavior textHeightBehavior,''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFDE9D9D).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''Code Snippet''',
                            style: GoogleFonts.arimaMadurai(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          top: 10,
                          right: 10,
                          bottom: 50,
                        ),
                        child: Text(r'''import package:flutter/material.dart;
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  // This widget is
  //the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ClipOval,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePAGE(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class MyHomePAGE extends StatefulWidget {
  const MyHomePAGE({Key? key}) : super(key: key);
 
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePAGEState createState() => _MyHomePAGEState();
}
 
class _MyHomePAGEState extends State<MyHomePAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(GeeksforGeeks),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: RichText(
        // Controls visual overflow
        overflow: TextOverflow.clip,
 
        // Controls how the text should be aligned horizontally
        textAlign: TextAlign.end,
 
        // Control the text direction
        textDirection: TextDirection.rtl,
 
        // Whether the text should break at soft line breaks
        softWrap: true,
 
        // Maximum number of lines for the text to span
        maxLines: 1,
 
        // The number of font pixels for each logical pixel
        textScaleFactor: 1,
        text: TextSpan(
          text: Hello ,
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(
                text: Geeks, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      )),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
 
class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }
 
  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFDE9D9D).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 500),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
