import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMonProfilScurit extends StatelessWidget {
  XDMonProfilScurit({
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
            Pin(size: 70.0, middle: 0.5016),
            Pin(size: 24.0, start: 50.0),
            child: Text(
              'Sécurité',
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
            Pin(start: 28.0, end: 28.0),
            Pin(size: 60.0, middle: 0.2699),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xaaf5f5f5),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.5, end: 13.3),
                      Pin(size: 6.0, middle: 0.5),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child:
                            // Adobe XD layer: 'arrow-down-sign-to-…' (group)
                            Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_t1aden,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 87.0, start: 20.0),
                  Pin(size: 19.0, middle: 0.3415),
                  child: Text(
                    'Mot de passe',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 14,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 190.0, start: 20.0),
                  Pin(size: 15.0, middle: 0.7333),
                  child: Text(
                    'Dernière modification : il y a 3j',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 11,
                      color: const Color(0xffbbbbbb),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 60.0, middle: 0.1809),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xaaf5f5f5),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.5, end: 13.3),
                      Pin(size: 6.0, middle: 0.5),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child:
                            // Adobe XD layer: 'arrow-down-sign-to-…' (group)
                            Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_t1aden,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 91.0, start: 20.0),
                  Pin(size: 19.0, middle: 0.3415),
                  child: Text(
                    'Adresse email',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 14,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 190.0, start: 20.0),
                  Pin(size: 15.0, middle: 0.7333),
                  child: Text(
                    'marie.doe@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 11,
                      color: const Color(0xffbbbbbb),
                      fontWeight: FontWeight.w500,
                    ),
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
const String _svg_t1aden =
    '<svg viewBox="0.0 97.1 10.5 6.0" ><path transform="translate(0.0, 0.0)" d="M 5.245201110839844 103.119514465332 C 5.057218551635742 103.119514465332 4.869258403778076 103.047737121582 4.725938320159912 102.9044876098633 L 0.2159224897623062 98.39441680908203 C -0.07097344100475311 98.10752868652344 -0.07097344100475311 97.64237213134766 0.2159224897623062 97.3555908203125 C 0.5027023553848267 97.06881713867188 0.9677619338035583 97.06881713867188 1.25468111038208 97.3555908203125 L 5.245201110839844 101.3463439941406 L 9.235745429992676 97.35573577880859 C 9.522641181945801 97.06896209716797 9.987653732299805 97.06896209716797 10.27441024780273 97.35573577880859 C 10.56144618988037 97.64251708984375 10.56144618988037 98.107666015625 10.27441024780273 98.39456176757812 L 5.764464855194092 102.9046249389648 C 5.621074676513672 103.0478973388672 5.433115482330322 103.119514465332 5.245201110839844 103.119514465332 Z" fill="#c3c3c3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
