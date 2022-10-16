import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageGestbegg extends StatefulWidget {
  const PageGestbegg({
    Key? key,
  }) : super(key: key);

  @override
  _StateGestbegg createState() => _StateGestbegg();
}

class _StateGestbegg extends State<PageGestbegg> {
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
        'name': "Gestbegg",
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
          height: 200,
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
                        builder: (context) => PageBeginner(),
                      ),
                    );
                  },
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageBeginner(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
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
                  left: 15,
                  top: 20,
                ),
                child: Text(r'''Gesture Detector''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
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
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''What is Gesture Detector''',
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
                            r'''It is a widget that detects gestures in Flutter. All the different types of gestures can be detected with the help of the GestureDetector Widget.

GestureDetector is used where we want the application to take some action when the user taps on the widget that is the child of this widget. We need to assign a child widget. On this widget, any gesture made will be detected.''',
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
                            maxLines: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''Code  Snippet''',
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
                          bottom: 10,
                        ),
                        child: Text(r'''GestureDetector({
  Key key,
  Widget? child,                                       
  void Function(TapDownDetails)? onTapDown,   
  void Function(TapUpDetails)? onTapUp,            
  void Function()? onTap,                            
  void Function()? onTapCancel,                      
  void Function()? onSecondaryTap,
});''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFDE9D9D).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''Demo Code''',
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

class GestureDetectorTutorial extends StatelessWidget {
  const GestureDetectorTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Item no. ${index + 1} tapped",
              ),
            ),
          ),
          child: Text(
            "Item no. ${index + 1}",
            style: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFDE9D9D).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 200),
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
