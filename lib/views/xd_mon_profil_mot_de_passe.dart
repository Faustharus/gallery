import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMonProfilMotDePasse extends StatelessWidget {
  XDMonProfilMotDePasse({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 11.5, start: 27.5),
            Pin(size: 20.0, start: 51.6),
            child:
                // Adobe XD layer: '17' (group)
                Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_sbabo2,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.5019),
            Pin(size: 24.0, start: 50.0),
            child: Text(
              'Mot de passe',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
                height: 2.0588235294117645,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 54.0, middle: 0.5792),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff02132b),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.008, 0.086),
                  child: SizedBox(
                    width: 58.0,
                    height: 20.0,
                    child: Text(
                      'Modifier',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 77.0, middle: 0.3184),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0x0802132b),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 224.0, start: 22.0),
                            Pin(size: 19.0, middle: 0.4857),
                            child: Text(
                              'Nouveau mot de passe',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color(0x6902132b),
                                fontWeight: FontWeight.w500,
                                height: 1.7692307692307692,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                            ),
                          ),
                        ],
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.4, end: 20.4),
                        Pin(size: 13.2, middle: 0.5),
                        child:
                            // Adobe XD layer: 'view' (group)
                            Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 6.0,
                                height: 6.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff9299a3),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                            ),
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_gj22jh,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 146.0,
                    height: 17.0,
                    child: Text(
                      'Nouveau mot de passe*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: const Color(0xff02132b),
                        fontWeight: FontWeight.w500,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 77.0, middle: 0.1946),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0x0802132b),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 22.0, end: 22.0),
                            Pin(size: 19.0, middle: 0.4857),
                            child: Text(
                              'Mot de passe',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color(0x6902132b),
                                fontWeight: FontWeight.w500,
                                height: 1.7692307692307692,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 128.0,
                    height: 17.0,
                    child: Text(
                      'Mot de passe actuel*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: const Color(0xff02132b),
                        fontWeight: FontWeight.w500,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 77.0, middle: 0.4422),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0x0802132b),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 243.0, start: 22.0),
                            Pin(size: 19.0, middle: 0.4857),
                            child: Text(
                              'Confirmez nouveau mot de passe',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color(0x6902132b),
                                fontWeight: FontWeight.w500,
                                height: 1.7692307692307692,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                            ),
                          ),
                        ],
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.4, end: 20.4),
                        Pin(size: 13.2, middle: 0.5),
                        child:
                            // Adobe XD layer: 'view' (group)
                            Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 6.0,
                                height: 6.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff9299a3),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                            ),
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_gj22jh,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 211.0,
                    height: 17.0,
                    child: Text(
                      'Confirmez nouveau mot de passe*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: const Color(0xff02132b),
                        fontWeight: FontWeight.w500,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.28),
            child: SizedBox(
              width: 211.0,
              height: 20.0,
              child: Text(
                '*les champs sont obligatoires',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xffa7adb5),
                  fontWeight: FontWeight.w500,
                  height: 2.2857142857142856,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_sbabo2 =
    '<svg viewBox="8.0 5.1 11.5 20.0" ><path  d="M 18.04934692382812 25.07206726074219 C 17.66776657104492 25.07427406311035 17.3010082244873 24.92446899414062 17.03009033203125 24.6557502746582 L 8.416660308837891 16.04232025146484 C 7.860056400299072 15.48239326477051 7.860056400299072 14.57809066772461 8.416660308837891 14.01816558837891 L 17.03009033203125 5.404736042022705 C 17.59966850280762 4.91696310043335 18.4487133026123 4.949759483337402 18.97896766662598 5.480014801025391 C 19.50922393798828 6.010268688201904 19.54201889038086 6.85931396484375 19.05424499511719 7.428890705108643 L 11.4600715637207 15.02306365966797 L 19.05424499511719 22.61723899841309 C 19.46648788452148 23.02610206604004 19.59185600280762 23.64302635192871 19.37189483642578 24.18036460876465 C 19.15193176269531 24.71769905090332 18.62995338439941 25.06963348388672 18.04934692382812 25.07206726074219 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gj22jh =
    '<svg viewBox="0.0 0.0 20.4 13.2" ><path transform="translate(0.0, -91.87)" d="M 20.07164764404297 97.5867919921875 C 17.65944671630859 94.67186737060547 14.00804233551025 91.86599731445312 10.19243621826172 91.86599731445312 C 6.376082897186279 91.86599731445312 2.723815679550171 94.67383575439453 0.3132258355617523 97.5867919921875 C -0.1037524938583374 98.09046936035156 -0.1037524938583374 98.82164764404297 0.3132258355617523 99.3253173828125 C 0.9192762970924377 100.0576782226562 2.189824342727661 101.4714050292969 3.886765718460083 102.7066497802734 C 8.160460472106934 105.8177871704102 12.21499443054199 105.8246536254883 16.49810409545898 102.7066497802734 C 18.19504547119141 101.4714050292969 19.4655933380127 100.0576782226562 20.07164764404297 99.3253173828125 C 20.48740768432617 98.82262420654297 20.48956680297852 98.09211730957031 20.07164764404297 97.5867919921875 Z M 10.19243621826172 94.06267547607422 C 12.61506748199463 94.06267547607422 14.58580875396729 96.03343200683594 14.58580875396729 98.45606231689453 C 14.58580875396729 100.8786926269531 12.61506748199463 102.8494338989258 10.19243621826172 102.8494338989258 C 7.769803047180176 102.8494338989258 5.799060821533203 100.8786926269531 5.799060821533203 98.45606231689453 C 5.799060821533203 96.03343200683594 7.769803047180176 94.06267547607422 10.19243621826172 94.06267547607422 Z" fill="#9299a3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
