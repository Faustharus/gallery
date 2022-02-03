import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMonProfilAdresseEmail extends StatelessWidget {
  XDMonProfilAdresseEmail({
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
            Pin(size: 124.0, middle: 0.502),
            Pin(size: 24.0, start: 50.0),
            child: Text(
              'Adresse email',
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
            Pin(size: 54.0, middle: 0.3272),
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
            Pin(start: 29.0, end: 29.0),
            Pin(size: 77.0, middle: 0.1823),
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
                            Pin(size: 218.0, start: 22.0),
                            Pin(size: 19.0, middle: 0.4857),
                            child: Text(
                              'anna.clark@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color(0xff02132b),
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
                    width: 92.0,
                    height: 17.0,
                    child: Text(
                      'Adresse email*',
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
            alignment: Alignment(-0.012, -0.202),
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
