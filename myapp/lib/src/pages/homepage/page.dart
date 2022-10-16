import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomePage createState() => _StateHomePage();
}

class _StateHomePage extends State<PageHomePage> {
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
        'name': "HomePage",
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
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Image.network(
                  r'''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-g00Y58urKR_RZZ4xQMVdn6cot2QX5jYF5zlvDmXf1uc67VnkzxgwrmY3xdBq5HIiYzo&usqp=CAU''',
                  width: double.maxFinite,
                  height: 850,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 40,
                                  right: 30,
                                  bottom: 30,
                                ),
                                child: Text(r'''Welcome 
Learn Flutter Here''',
                                    style: GoogleFonts.aclonica(
                                      textStyle: TextStyle(
                                        color: Color(0xFF090505).withOpacity(1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25,
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
                                  left: 35,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Text(r'''Begginner''',
                                    style: GoogleFonts.akayaTelivigala(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
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
                                  right: 15,
                                  bottom: 5,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  child: Image.network(
                                    r'''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNLU9aZ3vBKwfcXQVXJ8acvjhkd_lm1y7tfA&usqp=CAU''',
                                    width: double.maxFinite,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 65,
                                  top: 5,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () async {
                                    await Navigator.push<void>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PageBeginner(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF93DDE0).withOpacity(1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ),
                                        border: null,
                                      ),
                                      child: Center(
                                        child: Text(
                                          ''' Explore Begginner''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFF000000)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w600,
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
                                  left: 45,
                                  top: 15,
                                  right: 15,
                                  bottom: 15,
                                ),
                                child: Text(r'''Intermediate''',
                                    style: GoogleFonts.akayaTelivigala(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
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
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                  ),
                                  child: Image.network(
                                    r'''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDyeQzOfs1AxO_UM6TrfDnR0pgijH95_OXHw&usqp=CAU''',
                                    width: double.maxFinite,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 65,
                                ),
                                child: GestureDetector(
                                  onTap: () async {
                                    await Navigator.push<void>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PageIntermediate(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 250,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF93DDE0).withOpacity(1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                        border: null,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '''Explore Intermediate''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFF000000)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w600,
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
                                  left: 40,
                                  top: 25,
                                  right: 15,
                                  bottom: 5,
                                ),
                                child: Text(r'''Advanced''',
                                    style: GoogleFonts.akayaTelivigala(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
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
                                  top: 5,
                                  right: 15,
                                  bottom: 5,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  child: Image.network(
                                    r'''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcIBBpdTj4zEgRiyP5ZWZ_peNj9YdOsCB4Mg&usqp=CAU''',
                                    width: double.maxFinite,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 65,
                                  top: 5,
                                  right: 15,
                                  bottom: 100,
                                ),
                                child: GestureDetector(
                                  onTap: () async {
                                    await Navigator.push<void>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PageAdvanced(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 250,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF93DDE0).withOpacity(1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                        border: null,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '''Explore Advanced''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFF000000)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w600,
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
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
