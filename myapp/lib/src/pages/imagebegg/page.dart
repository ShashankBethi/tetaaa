import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:auth_buttons/auth_buttons.dart';

class PageImagebegg extends StatefulWidget {
  const PageImagebegg({
    Key? key,
  }) : super(key: key);

  @override
  _StateImagebegg createState() => _StateImagebegg();
}

class _StateImagebegg extends State<PageImagebegg> {
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
        'name': "Imagebegg",
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
                        left: 15,
                        top: 15,
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
                ),
                child: Text(r'''Image Widget ''',
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
                        ),
                        child: Text(r'''What is Image Widget''',
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
                            r'''Several constructors are provided for the various ways that an image can be specified:

Image.new, for obtaining an image from an ImageProvider.
Image.asset, for obtaining an image from an AssetBundle using a key.
Image.network, for obtaining an image from a URL.
Image.file, for obtaining an image from a File.
Image.memory, for obtaining an image from a Uint8List.
The following image formats are supported: JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP. Additional formats may be supported by the underlying platform. Flutter will attempt to call platform API to decode unrecognized formats, and if the platform API supports decoding the image Flutter will be able to render it.''',
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
                            maxLines: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 10,
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
                        ),
                        child: Text(r'''const Image(
  image: NetworkImage(https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg),
)''',
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
                            maxLines: 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 10,
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
import package:flutter_image_widget/image_widget/assets_image_widget.dart;
import package:flutter_image_widget/image_widget/fade_image_widget.dart;
import package:flutter_image_widget/image_widget/file_image_widget.dart;
import package:flutter_image_widget/image_widget/ink_image_widget.dart;
import package:flutter_image_widget/image_widget/memory_image_widget.dart;
import package:flutter_image_widget/image_widget/network_image_widget.dart;

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: NetworkImageWidget()
    ),
  );
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
                            maxLines: 150),
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
