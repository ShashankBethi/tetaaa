import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _StateEntryPoint createState() => _StateEntryPoint();
}

class _StateEntryPoint extends State<PageEntryPoint> {
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
        'name': "EntryPoint",
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
              Image.network(
                r'''https://cdn.wallpaperhub.app/cloudcache/0/2/7/1/0/f/02710f8ea0eb4b0941d0f8af15b3d99951a057ff.jpg''',
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 45,
                        right: 20,
                        bottom: 50,
                      ),
                      child: FutureBuilder<BannerAd>(
                        future:
                            Future.delayed(Duration(milliseconds: 0), () async {
                          final ad = BannerAd(
                            request: const AdRequest(),
                            adUnitId: UniversalPlatform.isIOS
                                ? '''iOS Ad unit Key'''
                                : '''
ca-app-pub-1661554854765897/7680392629''',
                            listener: const BannerAdListener(),
                            size: AdSize.fluid,
                          );
                          await ad.load();
                          return ad;
                        }),
                        builder: (context, ad) {
                          if (ad.data == null) {
                            return Container();
                          }
                          return AdWidget(
                            ad: ad.data!,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 150,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5000),
                          topRight: Radius.circular(5000),
                          bottomRight: Radius.circular(5000),
                          bottomLeft: Radius.circular(5000),
                        ),
                        child: Image.network(
                          r'''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDl6MYXHMPJg-VkRIL3oEKwpgSQ9JkUJxWuQ&usqp=CAU''',
                          width: double.maxFinite,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 65,
                        top: 10,
                        right: 10,
                        bottom: 10,
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
                        child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBD4CE).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                              border: null,
                            ),
                            child: Center(
                              child: Text(
                                '''GET STARTED''',
                                style: GoogleFonts.aclonica(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.underline,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
