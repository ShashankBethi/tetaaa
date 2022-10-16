import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageFloatactnintm extends StatefulWidget {
  const PageFloatactnintm({
    Key? key,
  }) : super(key: key);

  @override
  _StateFloatactnintm createState() => _StateFloatactnintm();
}

class _StateFloatactnintm extends State<PageFloatactnintm> {
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
        'name': "Floatactnintm",
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
                  left: 15,
                  top: 10,
                  bottom: 15,
                ),
                child: Text(r'''Floating Action Button Widget''',
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
                        child: Text(r'''What is Floating Action Button''',
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
                            r'''A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.

Constructor:
Syntax:
       FloatingActionButton({Key key, 
        Widget child, 
        String tooltip, 
        Color foregroundColor, 
         Color backgroundColor, 
        Color focusColor, 
         Color hoverColor, 
         Color splashColor, 
        Object heroTag: const _DefaultHeroTag(), 
        double elevation, 
       double focusElevation,  
      double hoverElevation, 
      double highlightElevation, 
      double disabledElevation, 
      @required VoidCallback onPressed, 
       MouseCursor mouseCursor, 
       bool mini: false, 
       ShapeBorder shape, 
       Clip clipBehavior: Clip.none, 
       FocusNode focusNode, 
       bool autofocus: false, 
      MaterialTapTargetSize materialTapTargetSize, 
      bool isExtended: false})








Properties:
autofocus: This property takes in a boolean value as an object (final) to decide whether the button will be selected on the initial focus.
backgroundColor: background color of button.
child: the widget to be displayed.
clipBehaviour: This property takes clip enum as the object to decide content will be clipped or not.
disabledElevation: With a double value as the object this property decides the location of the button on the z-coordinate when the button is disabled.
elevation: Again this property takes in a double as the object. And it controls the location on the z-coordinate on which the button will be placed.
focusColor: This property decided the color to be filled in the button at the time of input focus. It takes in Color class as the object.
focusElevtion: It decided the location of the button on the z-axis to place the button at the time of input focus.
focusNode: It provides an additional focus node for the button.
foregroundColor: It controls the default color of the text and icon inside the button.
heorTag: This is to add a hero tag to one of the widgets in the button.
highlightElevation: This property controls the location of the z-axis on which to place the button while the user interacts with it.
hoverColor: This property holds the Color class as the object. It controls the color to be painted in the button at the event of hover.
hoverElevation: This property takes in a double value as the parameter to decide the height of the button on the z-axis on which the button should be place t the time of hover.
isExtended: This property takes in a boolean value as the object. If it is set to true then the button becomes an extended floating action button.
materialTapTargetSize: This property is there to control the tap target size of the button.
mini: it controls the size of the button.
mouseCursor: This property takes in MouseCursor property as the object. It controls the cursor for the mouse pointer when it interacts with the button.
onPressed: callback function.
splashColor: splash color of FloatingActionButton.
shape: the shape of the button.
We also have floatingActionButtonLocation to set the location of the button.''',
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
                          bottom: 100,
                        ),
                        child: Text(r'''import package:flutter/material.dart;
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FAB,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  int i=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text("FloatingActionButton",),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text("GFG",textScaleFactor: 3,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Floating action button pressed this many times"),
          Text("$i",textScaleFactor: 3,)
        ],),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            i++;
          });
        },
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
