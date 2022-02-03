import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class XDDtailsActionsMaPublication extends StatelessWidget {
  XDDtailsActionsMaPublication({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 71.0, start: 29.0),
            Pin(size: 31.0, start: 39.0),
            child: Text(
              'Brand.',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 24,
                color: const Color(0xff02202f),
                letterSpacing: -0.48,
                fontWeight: FontWeight.w600,
                height: 0.9166666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Stack(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  // Adobe XD layer: 'pexels-riccardo-ber…' (shape)
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 119.0, start: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            const Color(0x58000000),
                            const Color(0x31000000),
                            const Color(0x00000000)
                          ],
                          stops: [0.0, 0.542, 1.0],
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 244.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 1.0),
                          end: Alignment(0.0, -1.0),
                          colors: [
                            const Color(0xde000000),
                            const Color(0x7c000000),
                            const Color(0x00000000)
                          ],
                          stops: [0.0, 0.542, 1.0],
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 406.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 1.0),
                          end: Alignment(0.0, -1.0),
                          colors: [
                            const Color(0xde000000),
                            const Color(0x7c000000),
                            const Color(0x00000000)
                          ],
                          stops: [0.0, 0.542, 1.0],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Pinned.fromPins(
            Pin(size: 42.0, start: 24.0),
            Pin(size: 42.0, start: 36.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_ux0rtl,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Center(
                  child: SizedBox(
                    width: 13.0,
                    height: 11.0,
                    child:
                        // Adobe XD layer: 'left-arrow' (group)
                        Stack(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_exd67t,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, end: 24.0),
            Pin(size: 42.0, start: 36.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_ux0rtl,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Center(
                  child: SizedBox(
                    width: 4.0,
                    height: 14.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.5, end: 0.5),
                          Pin(size: 3.0, start: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0x82ffffff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.5, end: 0.5),
                          Pin(size: 3.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0x82ffffff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 4.0, middle: 0.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, start: 29.0),
            Pin(size: 48.0, end: 80.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 92.0, middle: 0.3232),
            Pin(size: 23.0, end: 103.0),
            child: Text(
              'Anna Clark',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 0.9444444444444444,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 255.0, end: 29.0),
            Pin(size: 75.0, end: 27.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Integer ac egestas dui.\nVestibulum at congue magna, a facilisis metus.\nPraesent non magna sed lacus finibus\nvulputate et eget mauris',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 12,
                color: const Color(0xff88888b),
                fontWeight: FontWeight.w500,
                height: 1.25,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.5723),
            Pin(size: 15.0, end: 105.0),
            child: Text(
              '22 min',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 12,
                color: const Color(0xff88888b),
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Container(
            color: const Color(0x64000000),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, end: 24.0),
            Pin(size: 42.0, start: 36.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: const Color(0xfff1ff4a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 213.0, end: 0.0),
            child:
                // Adobe XD layer: 'Action Sheets - Men…' (group)
                Stack(
              children: [
// background:
                Positioned.fill(
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    color: Colors.transparent,
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 48.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 101.0,
                          child:
                              // Adobe XD layer: 'Action Sheets - Act…' (group)
                              Stack(
                            children: [
// background:
                              Positioned.fill(
                                child:
                                    // Adobe XD layer: 'Platter - Options' (shape)
                                    ClipRect(
                                  child: BackdropFilter(
                                    filter: ui.ImageFilter.blur(
                                        sigmaX: 30.0, sigmaY: 30.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xccededed),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 45.0,
                                      child:
                                          // Adobe XD layer: 'Header' (group)
                                          Stack(
                                        children: <Widget>[
                                          // Adobe XD layer: 'Frame' (shape)
                                          Container(
                                            color: Colors.transparent,
                                          ),
                                          Align(
                                            alignment: Alignment(0.005, 0.0),
                                            child: SizedBox(
                                              width: 168.0,
                                              height: 15.0,
                                              child:
                                                  // Adobe XD layer: 'Description' (text)
                                                  Text(
                                                'Que souhaitez-vous faire ?',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 13,
                                                  color:
                                                      const Color(0xff8f8f8f),
                                                  letterSpacing:
                                                      -0.10400000000000001,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                                softWrap: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 56.0,
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        SizedBox(
                          height: 56.0,
                          child: Container(),
                        ),
                      ],
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

const String _svg_exd67t =
    '<svg viewBox="0.0 0.0 12.8 10.6" ><path transform="translate(0.0, -41.67)" d="M 12.06915855407715 45.98217391967773 L 12.08912086486816 45.98653793334961 L 3.531917572021484 45.98653793334961 L 6.221989154815674 43.29044342041016 C 6.353716850280762 43.15881729125977 6.42597484588623 42.98050689697266 6.42597484588623 42.79335403442383 C 6.42597484588623 42.60620880126953 6.35371732711792 42.42914581298828 6.221989154815674 42.29720306396484 L 5.803413391113281 41.8784065246582 C 5.671789646148682 41.74677276611328 5.496395587921143 41.67399597167969 5.309357166290283 41.67399597167969 C 5.122213363647461 41.67399597167969 4.946715831756592 41.74625396728516 4.81509256362915 41.87788391113281 L 0.2037925720214844 46.48892974853516 C 0.07164859771728516 46.62107849121094 -0.0006084442138671875 46.79710388183594 -8.869171142578125e-05 46.98435211181641 C -0.0006084442138671875 47.17264938354492 0.07164859771728516 47.34877777099609 0.2037925720214844 47.48071670532227 L 4.81509256362915 52.09217834472656 C 4.946714878082275 52.22370147705078 5.122109889984131 52.29606628417969 5.309357166290283 52.29606628417969 C 5.496395587921143 52.29606628417969 5.671789646148682 52.22359848022461 5.803413391113281 52.09217834472656 L 6.221989154815674 51.67337799072266 C 6.353716850280762 51.54196166992188 6.42597484588623 51.366455078125 6.42597484588623 51.17930603027344 C 6.42597484588623 50.99225997924805 6.35371732711792 50.82601165771484 6.221989154815674 50.69448852539062 L 3.501558303833008 47.98331451416016 L 12.0787239074707 47.98331451416016 C 12.46413421630859 47.98331451416016 12.78799438476562 47.65112686157227 12.78799438476562 47.26591110229492 L 12.78799438476562 46.673583984375 C 12.78799438476562 46.28836822509766 12.45456886291504 45.98217391967773 12.06915855407715 45.98217391967773 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ux0rtl =
    '<svg viewBox="26.0 36.0 42.0 42.0" ><path transform="translate(26.0, 36.0)" d="M 21 0 C 32.59798049926758 0 42 9.402020454406738 42 21 C 42 32.59798049926758 32.59798049926758 42 21 42 C 9.402020454406738 42 0 32.59798049926758 0 21 C 0 9.402020454406738 9.402020454406738 0 21 0 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
