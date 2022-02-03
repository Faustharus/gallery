import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDInscriptionCGVU extends StatelessWidget {
  XDInscriptionCGVU({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 515.0, start: 120.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 54.0, end: 0.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffad8a39),
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.013, 0.0),
                            child: SizedBox(
                              width: 72.0,
                              height: 20.0,
                              child: Text(
                                'Continuer',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2142857142857142,
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
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 77.0, middle: 0.1826),
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
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 22.0, end: 22.0),
                                      Pin(size: 19.0, middle: 0.5143),
                                      child: Text(
                                        'john.doe@gmail.com',
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
                              width: 86.0,
                              height: 17.0,
                              child: Text(
                                'Adresse email',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff02132b),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6666666666666667,
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
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 77.0, middle: 0.3904),
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
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 22.0, end: 42.0),
                                      Pin(size: 19.0, middle: 0.5143),
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
                                            color: const Color(0xff9299a4),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ),
                                      SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_sroig4,
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
                              width: 80.0,
                              height: 17.0,
                              child: Text(
                                'Mot de passe',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff02132b),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6666666666666667,
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
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 77.0, middle: 0.5982),
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
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 236.0, start: 22.0),
                                      Pin(size: 19.0, middle: 0.5143),
                                      child: Text(
                                        'Confirmation mot de passe',
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
                                            color: const Color(0xff9299a4),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ),
                                      SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_sroig4,
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
                              width: 166.0,
                              height: 17.0,
                              child: Text(
                                'Confirmation mot de passe',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff02132b),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6666666666666667,
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
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 77.0, middle: 0.8082),
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
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(-0.383, 0.086),
                                      child: SizedBox(
                                        width: 35.0,
                                        height: 19.0,
                                        child: Text(
                                          '+33',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            color: const Color(0xff02132b),
                                            fontWeight: FontWeight.w500,
                                            height: 1.7692307692307692,
                                          ),
                                          textHeightBehavior:
                                              TextHeightBehavior(
                                                  applyHeightToFirstAscent:
                                                      false),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 23.2, start: 15.0),
                                      Pin(size: 17.4, middle: 0.5),
                                      child:
                                          // Adobe XD layer: '_x30_4_x2C__france_…' (group)
                                          Stack(
                                        children: <Widget>[
                                          // Adobe XD layer: 'XMLID_684_' (group)
                                          Stack(
                                            children: <Widget>[
                                              Pinned.fromPins(
                                                Pin(size: 8.2, start: 0.0),
                                                Pin(start: 0.0, end: 0.0),
                                                child:
                                                    // Adobe XD layer: 'XMLID_631_' (shape)
                                                    SvgPicture.string(
                                                  _svg_o9dyad,
                                                  allowDrawingOutsideViewBox:
                                                      true,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Pinned.fromPins(
                                                Pin(size: 8.2, end: 0.0),
                                                Pin(start: 0.0, end: 0.0),
                                                child:
                                                    // Adobe XD layer: 'XMLID_630_' (shape)
                                                    SvgPicture.string(
                                                  _svg_wzr8b,
                                                  allowDrawingOutsideViewBox:
                                                      true,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Pinned.fromPins(
                                                Pin(size: 7.7, middle: 0.5),
                                                Pin(start: 0.0, end: 0.0),
                                                child:
                                                    // Adobe XD layer: 'XMLID_629_' (shape)
                                                    SvgPicture.string(
                                                  _svg_yoqsy,
                                                  allowDrawingOutsideViewBox:
                                                      true,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Pinned.fromPins(
                                  Pin(size: 1.0, middle: 0.2294),
                                  Pin(start: 8.5, end: 8.5),
                                  child: SvgPicture.string(
                                    _svg_vuflt,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 147.0, end: 47.0),
                                  Pin(size: 19.0, middle: 0.5429),
                                  child: Text(
                                    '06   00   00   00   00',
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
                                Pinned.fromPins(
                                  Pin(size: 8.2, start: 50.0),
                                  Pin(size: 4.7, middle: 0.5),
                                  child:
                                      // Adobe XD layer: 'arrow-down-sign-to-…' (group)
                                      Stack(
                                    children: <Widget>[
                                      SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_ihbh,
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
                              width: 132.0,
                              height: 17.0,
                              child: Text(
                                'Numéro de téléphone',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff02132b),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6666666666666667,
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
                    Align(
                      alignment: Alignment(-0.009, -1.0),
                      child: SizedBox(
                        width: 206.0,
                        height: 32.0,
                        child: Text(
                          'Créez un compte.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            color: const Color(0xff02132b),
                            fontWeight: FontWeight.w700,
                            height: 1.3043478260869565,
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.6, start: 23.0),
            Pin(size: 16.8, start: 53.6),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'arrows' (group)
                    Stack(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_kfr32,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0x77000000),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55.0),
                          topRight: Radius.circular(55.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 178.0, middle: 0.5025),
                      Pin(size: 48.0, start: 30.3),
                      child: Text(
                        'CGVU et politique de\nconfidentalité',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff02132b),
                          fontWeight: FontWeight.w600,
                          height: 1.411764705882353,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 169.0, middle: 0.5),
                      Pin(size: 54.0, end: 37.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff02132b),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.009, 0.086),
                            child: SizedBox(
                              width: 72.0,
                              height: 20.0,
                              child: Text(
                                'Continuer',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2142857142857142,
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
                      Pin(start: 30.0, end: 35.0),
                      Pin(size: 430.0, start: 98.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis ex ex, nec pretium ante mollis id. Nullam lorem magna, malesuada sit amet nisi ut, congue lobortis turpis. Nulla pellentesque libero vitae mollis facilisis. Nulla auctor diam posuere aliquam scelerisque. Curabitur id sodales diam. Aliquam ut bibendum mi. Proin id ipsum sed nisl commodo dapibus. Aliquam eleifend mollis ipsum, vel rhoncus mauris. In a neque a urna vulputate elementum non sed quam. Ut in faucibus ante.\n\nPellentesque non dolor consectetur, mollis nunc id, tincidunt orci. Suspendisse accumsan odio nec nunc mattis maximus. Donec id varius orci, ut eleifend metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse potenti. In non sagittis nunc. In lectus ipsum, suscipit vitae iaculis a, sagittis eu mauris. Nam at finibus eros. Sed congue efficitur quam, ultricies rutrum diam accumsan quis. Maecenas finibus ex eu efficitur maximus. Vivamus in erat laoreet, malesuada mi ut, suscipit tortor. Ut euismod iaculis velit, et euismod dolor semper ac. Aliquam bibendum, nulla ac semper volutpat, arcu urna sagittis nulla, non vehicula ante neque eu velit. Duis a pharetra felis. Donec sed luctus metus. Duis feugiat risus eu tortor tempus, id fermentum felis dictum.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            color: const Color(0x5902132b),
                            fontWeight: FontWeight.w500,
                            height: 1.5384615384615385,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: 17.5),
                      Pin(size: 412.9, middle: 0.3699),
                      child: SvgPicture.string(
                        _svg_vs55n2,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: 17.5),
                      Pin(size: 109.0, middle: 0.18),
                      child: SvgPicture.string(
                        _svg_wtyj1,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 26.0, start: 30.0),
                      Pin(size: 26.0, middle: 0.8104),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff6f6f6),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              width: 0.5, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 257.0, end: 48.0),
                      Pin(size: 33.0, middle: 0.8144),
                      child: Text(
                        'J’accepte la politique de confidentialité et les\nconditions générales de ventes et d’utilisation.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          color: const Color(0xbf02132b),
                          fontWeight: FontWeight.w500,
                          height: 1.5454545454545454,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 43.0, middle: 0.5),
                  Pin(size: 1.0, start: 12.5),
                  child: SvgPicture.string(
                    _svg_vsyqib,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
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

const String _svg_sroig4 =
    '<svg viewBox="0.0 0.0 20.4 13.2" ><path transform="translate(0.0, -91.87)" d="M 20.07164764404297 97.5867919921875 C 17.65944671630859 94.67186737060547 14.00804233551025 91.86599731445312 10.19243621826172 91.86599731445312 C 6.376082897186279 91.86599731445312 2.723815679550171 94.67383575439453 0.3132258355617523 97.5867919921875 C -0.1037524938583374 98.09046936035156 -0.1037524938583374 98.82164764404297 0.3132258355617523 99.3253173828125 C 0.9192762970924377 100.0576782226562 2.189824342727661 101.4714050292969 3.886765718460083 102.7066497802734 C 8.160460472106934 105.8177871704102 12.21499443054199 105.8246536254883 16.49810409545898 102.7066497802734 C 18.19504547119141 101.4714050292969 19.4655933380127 100.0576782226562 20.07164764404297 99.3253173828125 C 20.48740768432617 98.82262420654297 20.48956680297852 98.09211730957031 20.07164764404297 97.5867919921875 Z M 10.19243621826172 94.06267547607422 C 12.61506748199463 94.06267547607422 14.58580875396729 96.03343200683594 14.58580875396729 98.45606231689453 C 14.58580875396729 100.8786926269531 12.61506748199463 102.8494338989258 10.19243621826172 102.8494338989258 C 7.769803047180176 102.8494338989258 5.799060821533203 100.8786926269531 5.799060821533203 98.45606231689453 C 5.799060821533203 96.03343200683594 7.769803047180176 94.06267547607422 10.19243621826172 94.06267547607422 Z" fill="#9299a4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o9dyad =
    '<svg viewBox="0.0 0.0 8.2 17.4" ><path transform="translate(-16.0, -76.0)" d="M 23.72688293457031 93.38548278808594 L 16 93.38548278808594 L 16 76 L 23.72688293457031 76 L 24.20981216430664 84.20986175537109 L 23.72688293457031 93.38548278808594 Z" fill="#0053b5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wzr8b =
    '<svg viewBox="15.0 0.0 8.2 17.4" ><path transform="translate(-311.03, -76.0)" d="M 334.2098388671875 93.38548278808594 L 326.4829406738281 93.38548278808594 L 326 84.6927490234375 L 326.4829406738281 76 L 334.2098388671875 76 L 334.2098388671875 93.38548278808594 Z" fill="#d80027" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yoqsy =
    '<svg viewBox="7.7 0.0 7.7 17.4" ><path transform="translate(-168.27, -76.0)" d="M 176 76 L 183.7268829345703 76 L 183.7268829345703 93.38548278808594 L 176 93.38548278808594 L 176 76 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vuflt =
    '<svg viewBox="88.5 78.5 1.0 37.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 88.5, 78.5)" d="M 0 0 L 37 0" fill="none" stroke="#c3c3c3" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ihbh =
    '<svg viewBox="0.0 0.0 8.2 4.7" ><path transform="translate(0.0, 0.0)" d="M 4.120560646057129 4.697696685791016 C 3.972862720489502 4.697696685791016 3.82518196105957 4.641301155090332 3.712575674057007 4.528746604919434 L 0.1690603792667389 0.9851975440979004 C -0.05635347217321396 0.759787917137146 -0.05635347217321396 0.3943172693252563 0.1690603792667389 0.1689931154251099 C 0.3943830728530884 -0.05633103474974632 0.7597799897193909 -0.05633103474974632 0.9852120280265808 0.1689931154251099 L 4.120560646057129 3.304522037506104 L 7.255926609039307 0.169100895524025 C 7.481340885162354 -0.05621952563524246 7.846701622009277 -0.05621952563524246 8.072006225585938 0.169100895524025 C 8.297528266906738 0.3944250643253326 8.297528266906738 0.759899377822876 8.072006225585938 0.9853127002716064 L 4.528544902801514 4.528857707977295 C 4.415883541107178 4.641430854797363 4.268203735351562 4.697696685791016 4.120560646057129 4.697696685791016 Z" fill="#bbbbbb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kfr32 =
    '<svg viewBox="0.0 0.0 19.6 16.8" ><path transform="translate(0.0, -31.88)" d="M 0.4104275107383728 39.29095077514648 C 0.4107777178287506 39.29060363769531 0.4111719727516174 39.29020690917969 0.4115220904350281 39.28985977172852 L 7.41850471496582 32.28287887573242 C 7.968202590942383 31.73803520202637 8.855504989624023 31.74197959899902 9.400341033935547 32.29168319702148 C 9.443389892578125 32.33512115478516 9.483548164367676 32.38132858276367 9.520597457885742 32.43002319335938 C 9.913471221923828 33.01603317260742 9.827723503112793 33.79971313476562 9.317395210266113 34.28687286376953 L 5.449542999267578 38.16874313354492 C 5.243930816650391 38.37456893920898 5.007534503936768 38.54716110229492 4.748844146728516 38.68025207519531 L 4.321417808532715 38.90447616577148 L 18.09013748168945 38.90447616577148 C 18.79516792297363 38.87482070922852 19.41922760009766 39.35695266723633 19.5686092376709 40.04661178588867 C 19.6924991607666 40.81059646606445 19.17363357543945 41.53038024902344 18.40961074829102 41.65427398681641 C 18.32946586608887 41.66728210449219 18.24836349487305 41.67328262329102 18.16721153259277 41.6722297668457 L 4.349446296691895 41.6722297668457 L 4.650746822357178 41.81237411499023 C 4.944735050201416 41.94966506958008 5.212618827819824 42.13697052001953 5.442535877227783 42.36592483520508 L 9.317395210266113 46.24078750610352 C 9.827724456787109 46.72794723510742 9.913471221923828 47.51163864135742 9.520599365234375 48.09763717651367 C 9.063349723815918 48.72209548950195 8.186469078063965 48.85767364501953 7.561974048614502 48.40042114257812 C 7.511523246765137 48.36346054077148 7.463569164276123 48.32317352294922 7.418506145477295 48.27981567382812 L 0.4115234315395355 41.2728385925293 C -0.1360293477773666 40.72585296630859 -0.136511817574501 39.83854675292969 0.4104275107383728 39.29095077514648 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vs55n2 =
    '<svg viewBox="831.5 438.6 1.0 412.9" ><path transform="translate(831.5, 438.57)" d="M 0 0 L 0 412.8572998046875" fill="none" stroke="#dedede" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wtyj1 =
    '<svg viewBox="831.5 438.6 1.0 109.0" ><path transform="translate(831.5, 438.57)" d="M 0 0 L 0 109" fill="none" stroke="#adadad" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_vsyqib =
    '<svg viewBox="641.0 344.5 43.0 1.0" ><path transform="translate(641.0, 344.5)" d="M 0 0 L 43 0" fill="none" stroke="#c9c9c9" stroke-width="3.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
