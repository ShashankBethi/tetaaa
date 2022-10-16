import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageGridviewadv extends StatefulWidget {
  const PageGridviewadv({
    Key? key,
  }) : super(key: key);

  @override
  _StateGridviewadv createState() => _StateGridviewadv();
}

class _StateGridviewadv extends State<PageGridviewadv> {
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
        'name': "Gridviewadv",
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
                        builder: (context) => PageAdvanced(),
                      ),
                    );
                  },
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageAdvanced(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1,
                        top: 1,
                        right: 1,
                        bottom: 1,
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
                  top: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Text(r'''GridView Widget''',
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
                        child: Text(r'''What is Grid View Widget''',
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
                            r'''Flutter GridView is a widget that is similar to a 2-D Array in any programming language. As the name suggests, a GridView Widget is used when we have to display something on a Grid. We can display images, text, icons, etc on GridView. We can implement GridView in various ways in Flutter :

GridView.count()
GridView.builder()
GridView.custom()
GridView.extent()''',
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
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''Constructor''',
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
                          left: 50,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''GridView(
{Key key,
Axis scrollDirection: Axis.vertical,
bool reverse: false,
ScrollController controller,
bool primary,
ScrollPhysics physics,
bool shrinkWrap: false,
EdgeInsetsGeometry padding,
@required SliverGridDelegate gridDelegate,
bool addAutomaticKeepAlives: true,
bool addRepaintBoundaries: true,
bool addSemanticIndexes: true,
double cacheExtent,
List<Widget> children: const <Widget>[],
int semanticChildCount,
DragStartBehavior dragStartBehavior: DragStartBehavior.start,
Clip clipBehavior: Clip.hardEdge,
ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
String restorationId}
)

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
                            maxLines: 1000),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(r'''Properties of GridView:


anchor: This property takes in a double value as the object to control the zero scroll effect.
childrenDelegate: sliverChildDelegate is the object of this property. It provides a delegate that serves the children for the GridView.
clipBehaviour: This property takes Clip enum as the object to decide whether the content in the GridView will be clipped or not.
controller: This property holds ScrollController class as the object to control the position of the scroll view.
dragStartBehaviour: This property takes DragStartBehavior enum as the object. It controls the way the drag behaviour works.
gridDelegate: SliverGridDelegate class is the object to this property. It is responsible for the delegate that handles the layout of the children widget in the GridView.

GridView.count() is one which is used frequently and it is used when we already know the size of Grids. Whenever we have to implement GridView dynamically, we use GridView.builder(). Both are just like a normal array and dynamic array. In Flutter, the two GridView is mostly used.

GridView.count() is used with some named parameters. The properties that we can use with GridView.count() are: 

crossAxisCount: It defines the number of columns in GridView.
crossAxisSpacing: It defines the number of pixels between each child listed along the cross axis.
mainAxisSpacing: It defines the number of pixels between each child listed along the main axis.
padding(EdgeInsetsGeometry): It defines the amount of space to surround the whole list of widgets.
primary: If true, it’s ‘Scroll Controller’ is obtained implicitly by the framework.
scrollDirection: It defines the direction in which the items on GridView will move, by default it is vertical.
reverse: If it is set to true, it simply reverses the list of widgets in opposite direction along the main axis.''',
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
                            maxLines: 1500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                          right: 15,
                          bottom: 15,
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
                          left: 50,
                          top: 15,
                          right: 15,
                          bottom: 50,
                        ),
                        child: Text(r'''import package:flutter/material.dart;
 
void main() {
  runApp(GeeksForGeeks());
}
 
class GeeksForGeeks extends StatelessWidget {
 
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              Flutter GridView Demo,
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(img.png),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),
                ),
              );
            },),
        ),
      ),
    );
  }
}''',
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
                            maxLines: 2560),
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
