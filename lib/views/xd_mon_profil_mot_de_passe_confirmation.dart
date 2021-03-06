import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMonProfilMotDePasseConfirmation extends StatelessWidget {
  XDMonProfilMotDePasseConfirmation({
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
          Stack(
            children: <Widget>[
              // Adobe XD layer: 'Dimming Overlay' (group)
              Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Overlay' (shape)
                  Container(
                    color: const Color(0x66000000),
                  ),
                ],
              ),
            ],
          ),
          Pinned.fromPins(
            Pin(start: 47.0, end: 46.0),
            Pin(size: 268.0, middle: 0.5037),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(28.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x36000000),
                            offset: Offset(0, 0),
                            blurRadius: 45,
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 23.0, end: 23.0),
                      Pin(size: 57.0, middle: 0.2611),
                      child: Text(
                        'V??rifiez votre bo??te mail',
                        style: TextStyle(
                          fontFamily: 'Avenir Next',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          height: 1.2272727272727273,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 34.0),
                  Pin(size: 14.9, start: 28.0),
                  child:
                      // Adobe XD layer: 'close' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'close_1_' (group)
                      Stack(
                        children: <Widget>[
                          SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_e70oto,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                          SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_cwsaog,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 139.0, middle: 0.5035),
                  Pin(size: 54.0, end: 20.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff02132b),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.012, 0.062),
                        child: SizedBox(
                          width: 56.0,
                          height: 23.0,
                          child: Text(
                            'Fermer',
                            style: TextStyle(
                              fontFamily: 'Avenir Next',
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 40.0, middle: 0.5395),
                  child: Text(
                    'Vos nouveaux identifiants vous ont ??t?? envoy??s par email !',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 15,
                      color: const Color(0x4d0e0e0e),
                      fontWeight: FontWeight.w500,
                      height: 1.3333333333333333,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
const String _svg_e70oto =
    '<svg viewBox="0.0 0.0 14.9 14.8" ><path transform="translate(0.0, -2.44)" d="M 1.426504492759705 17.30369186401367 C 1.057692289352417 17.32513427734375 0.6949803233146667 17.2025260925293 0.4148520827293396 16.96171951293945 C -0.1376152187585831 16.40596771240234 -0.1376152187585831 15.50838375091553 0.4148520827293396 14.9526309967041 L 12.51207447052002 2.855362415313721 C 13.08668994903564 2.317675590515137 13.98835563659668 2.347565412521362 14.52604198455811 2.92218017578125 C 15.01225471496582 3.441801786422729 15.04059600830078 4.240471839904785 14.5923900604248 4.793220520019531 L 2.423892498016357 16.96172142028809 C 2.147377014160156 17.19905471801758 1.790483355522156 17.3214282989502 1.426504611968994 17.30369186401367 Z" fill="#d8d8d8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cwsaog =
    '<svg viewBox="0.1 0.0 15.0 14.9" ><path transform="translate(-1.46, -1.84)" d="M 14.96554374694824 16.70624542236328 C 14.59175777435303 16.70465087890625 14.23350143432617 16.5562801361084 13.96810817718506 16.29304504394531 L 1.870839476585388 4.195727825164795 C 1.359007120132446 3.598026990890503 1.428593397140503 2.698519706726074 2.026294231414795 2.186640501022339 C 2.559757709503174 1.729801654815674 3.346509695053101 1.729801654815674 3.879926443099976 2.186640501022339 L 16.04842376708984 14.28390884399414 C 16.62289810180664 14.82173633575439 16.65260314941406 15.72344970703125 16.11477470397949 16.29792404174805 C 16.09337615966797 16.32077407836914 16.0712776184082 16.34287452697754 16.04842376708984 16.36427116394043 C 15.75046539306641 16.62337875366211 15.35833358764648 16.74720764160156 14.96554374694824 16.70624351501465 Z" fill="#d8d8d8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
