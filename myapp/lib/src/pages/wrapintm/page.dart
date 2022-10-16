import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageWrapintm extends StatefulWidget {
  const PageWrapintm({
    Key? key,
  }) : super(key: key);

  @override
  _StateWrapintm createState() => _StateWrapintm();
}

class _StateWrapintm extends State<PageWrapintm> {
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
        'name': "Wrapintm",
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
                        left: 15,
                        top: 15,
                        right: 15,
                        bottom: 15,
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
                child: Text(r'''Wrap Widget''',
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
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''What is Wrap Widget''',
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
                          left: 20,
                          top: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Text(
                            r'''Wrap widget aligns the widgets in a horizontal and vertical manner. Generally, we use Rows and Columns to do that but if we have some widgets which are not able to fit in the Row/Column then it will give us Overflow Message ( for ex: Right Overflowed by 570 pixels). 

Constructor of Wrap class:
Wrap({Key key, 
Axis direction, 
WrapAlignment alignment, 
double spacing, 
WrapAlignment runAlignment, 
double runSpacing, 
WrapCrossAlignment crossAxisAlignment, 
TextDirection textDirection, 
VerticalDirection verticalDirection, 
List<Widget> children})
Properties:
direction: By default, the axis is horizontal but we can make it vertical by changing the axis from Axis.horizontal to Axis.vertical.
alignment: We can set the alignment property to align widgets. (for ex : alignment : WrapAlignment.center).
spacing: We can give space between the children.
runAlignment: It shows how runs themselves should be placed in the cross axis. By default, we have runAlignment as WrapAlignment.start.
runSpacing: We can give runSpacing between the runs. (ex: runSpacing:5.0).
crossAxisAlignment: We can align the children relative to each other in cross Axis.
textDirection : We can arrange children in a row using textDirection (for ex : textDirection: TextDirection.rtl to arrange from right to left).
clipBehaviour: This property takes in Clip enum as the object to decide whether the content inside the Wrap widget will be clipped or not.
children: The children property takes in a list of widgets as the object to show inside the Wrap widget or below the Wrap widget in the widget tree.
verticalDirection: This property takes in VerticalDirection enum as the object to. This property decides the order in which each children widget will be painted on the screen in a vertical sense.
runtimeType: Type class is the object given to the runtimeType property. It determines the type of the Wrap widget at the run time.
key: This property decides how one widget will replace another widget on the screen.
haskCode: This property takes in an int value as the object which represents the state of the widget.''',
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
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
                          bottom: 10,
                        ),
                        child: Text(r'''import package:flutter/material.dart;
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "GFG",
      theme: new ThemeData(
          primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: WrapW()
    );
  }
}
 
class WrapW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("GeeksForGeeks"),
      ),
      body: Wrap(
        // direction: Axis.vertical,
        // alignment: WrapAlignment.center,
        // spacing:8.0,
        // runAlignment:WrapAlignment.center,
        // runSpacing: 8.0,
        // crossAxisAlignment: WrapCrossAlignment.center,
        // textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child:Center(child: Text("W1",textScaleFactor: 2.5,))
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child:Center(child: Text("W2",textScaleFactor: 2.5,))
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
            child:Center(child: Text("W3",textScaleFactor: 2.5,))
          ),
          Container(
            color: Colors.indigo,
            width: 100,
            height: 100,
            child:Center(child: Text("W4",textScaleFactor: 2.5,))
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
            child:Center(child: Text("W5",textScaleFactor: 2.5,))
          ),
        ],
      ),
    );
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
                            maxLines: 1000),
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
