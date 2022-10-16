import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PagePositionedintm extends StatefulWidget {
  const PagePositionedintm({
    Key? key,
  }) : super(key: key);

  @override
  _StatePositionedintm createState() => _StatePositionedintm();
}

class _StatePositionedintm extends State<PagePositionedintm> {
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
        'name': "Positionedintm",
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
          height: 125,
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
                        left: 15,
                        top: 20,
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
                  top: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Text(r'''Positioned Widget''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
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
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''What is Positioned Widget
''',
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
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                            r'''Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets.

Constructor of Positioned Class:
It is responsible for controlling where a child of Stack is positioned.

        const Positioned(
       {Key key,
        double left,
        double top,
         double right,
         double bottom,
         double width,
         double height,
          @required Widget child}
           )
Constructor of Positioned.directional class:
It is responsible for controlling where a child of Stack is positioned. But has additional properties for specifying the Text direction.

          Positioned.directional(
         {Key key,
         @required TextDirection textDirection,
          double start,
          double top,
          double end,
           double bottom,
           double width,
          double height,
          @required Widget child}
            )''',
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
                            maxLines: 10000),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''Properties of Positioned Widget: 

bottom: This property controls the distance that the child widgets are inset from the bottom of the Stack. It takes in a double value as the object.
debugTypicalAncestorWidgetClass: This widget takes in a Type class as the object. In the case of an error, this gives information about what widget typically wraps this ParentdataWidget.
height: This property takes in a double value as the object to decide the height of its child widget.
left: This property controls the distance that the child widgets are inset from the left of the Stack. It takes in a double value as the object.
top: The top property also takes in a double value to decide the distance between the top edge of the child widget and the Stack.
width: This property takes in a double value to decide the width of the child widget.''',
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
                            maxLines: 1000),
                      ),
                      Text(r'''Demo Code''',
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          top: 10,
                          right: 10,
                          bottom: 50,
                        ),
                        child:
                            Text(r'''textimport package:flutter/material.dart;
 
// Material design library
void main() {
  runApp(
     
    // widget tree starts here
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(GeeksforGeeks),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Padding(
          padding: EdgeInsets.only(top: 300),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
               
              /** Positioned WIdget **/
              Positioned(
                top: 0.0,
                child: Icon(Icons.message,
                    size: 128.0, color: Colors.greenAccent[400]), //Icon
              ), //Positioned
              /** Positioned WIdget **/
               
              Positioned(
                top: 0,
                right: 285,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text(24),
                ), //CircularAvatar
              ), //Positioned
            ], //<Widget>[]
          ), //Stack
        ), //Padding
      ), //Scaffold
    ), //MaterialApp
  );
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
                                maxLines: 250),
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
