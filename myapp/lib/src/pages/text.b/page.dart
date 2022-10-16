import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageTextB extends StatefulWidget {
  const PageTextB({
    Key? key,
  }) : super(key: key);

  @override
  _StateTextB createState() => _StateTextB();
}

class _StateTextB extends State<PageTextB> {
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
        'name': "TextB",
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
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF435962).withOpacity(1),
          ),
          child: Row(
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
                    child: Icon(
                      MdiIcons.fromString('keyboard-backspace'),
                      size: 35,
                      color: Color(0xFFFCFAFA).withOpacity(1),
                    ),
                  )),
              Text(r'''TEXT WIDGET''',
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
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
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
                          left: 40,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''What Is Text Widget''',
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
                            r'''A Text is a widget in Flutter that allows us to display a string of text with a single line in our application. Depending on the layout constraints, we can break the string across multiple lines or might all be displayed on the same line. If we do not specify any styling to the text widget, it will use the closest DefaultTextStyle class style.''',
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
                            maxLines: 10),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          top: 20,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(r'''DEMO CODE''',
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
                        child: Text(r'''import package:flutter/material.dart;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Flutter Demo,
      home: Home(title: Flutter Text Widget),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body:Center(
        child: Text(
          Code With Flutter,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.greenAccent[200],
            fontStyle: FontStyle.italic,
            letterSpacing: 8,
            wordSpacing: 10,
              shadows: [
                Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:7)
              ]
          ),
        ),
      ),

    );
  }
}
''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFCB8383).withOpacity(1),
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 50,
                        ),
                        child: Text(
                            r'''this example shows how to diplay text using the Text Widget with the Text flow direction from left to right''',
                            style: GoogleFonts.averiaSansLibre(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 10),
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
