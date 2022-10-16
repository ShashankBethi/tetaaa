import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageIntermediate extends StatefulWidget {
  const PageIntermediate({
    Key? key,
  }) : super(key: key);

  @override
  _StateIntermediate createState() => _StateIntermediate();
}

class _StateIntermediate extends State<PageIntermediate> {
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
        'name': "Intermediate",
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
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF29384D).withOpacity(1),
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
                          left: 5,
                          top: 30,
                        ),
                        child: GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageHomePage(),
                                ),
                              );
                            },
                            child: TextButton(
                              onPressed: () async {
                                await Navigator.push<void>(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageHomePage(),
                                  ),
                                );
                              },
                              child: Icon(
                                MdiIcons.fromString('keyboard-backspace'),
                                size: 40,
                                color: Color(0xFFFAF9F9).withOpacity(1),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 20,
                        ),
                        child: Text(r'''Intermediate''',
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
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageOverfbintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''OverFlow Box''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageSizedbxintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Sized  Box''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageFlatbtnint(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''FlatButton Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageSpacerintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Spacer Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageVisibintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Visibility Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageOffstageintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465465).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Offstage Widg''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageRichintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''RichText Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageTransfrmintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Transform Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PagePositionedintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Positioned Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageStackintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Stack Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageIndexedstackintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''IndexedStack''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageWrapintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Wrap Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageFloatactnintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''FloatingAction Button''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageDrpdownwidget(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Dropdown Button''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageCheckerboxintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465465).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Checkbox Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageRadiointm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Radio Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageSwitchintm(),
                              ),
                            );
                          },
                          child: Container(
                              width: double.maxFinite,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFF465262).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Switch Widget''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
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
