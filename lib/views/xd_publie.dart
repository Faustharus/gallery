import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDPublie extends StatelessWidget {
  XDPublie({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 375.0, end: -84.1),
            child: Stack(
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
                  Pin(size: 156.0, end: 0.1),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0x00000000),
                          const Color(0xff000000)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(11.0),
                        bottomLeft: Radius.circular(11.0),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, start: 24.0),
                  Pin(size: 40.0, end: 21.1),
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
                  Pin(size: 82.0, middle: 0.256),
                  Pin(size: 20.0, end: 39.1),
                  child: Text(
                    'Anna Clark',
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      height: 1.125,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 4.0, end: 20.0),
                  Pin(size: 14.0, start: 15.4),
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x82000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x82000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 226.0, middle: 0.5101),
                  Pin(size: 15.0, end: 22.1),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur…',
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 12,
                      color: const Color(0xff88888b),
                      fontWeight: FontWeight.w500,
                      height: 1.4166666666666667,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, end: 0.0),
            child: Container(
              color: const Color(0xffffffff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 375.0, middle: 0.3136),
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'pexels-pixabay-2739…' (shape)
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
                  Pin(size: 156.0, end: 0.1),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0x00000000),
                          const Color(0xff000000)
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, start: 24.0),
                  Pin(size: 40.0, end: 21.1),
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
                  Pin(size: 82.0, middle: 0.2594),
                  Pin(size: 20.0, end: 42.0),
                  child: Text(
                    'Anna Clark',
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      height: 1.125,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 129.0, middle: 0.3089),
                  Pin(size: 18.0, end: 24.0),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Sofia Pro',
                        fontSize: 12,
                        color: const Color(0xff88888b),
                        height: 1.5454545454545454,
                      ),
                      children: [
                        TextSpan(
                          text: 'Une superbe balade ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '❤️',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 4.0, end: 20.0),
                  Pin(size: 14.0, start: 15.4),
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x82000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x82000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
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
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.0, middle: 0.4926),
                  Pin(size: 15.0, end: 43.0),
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 152.0, start: 29.0),
            Pin(size: 31.0, start: 50.0),
            child: Text(
              'Fil d’actualités',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 24,
                color: const Color(0xff02132b),
                letterSpacing: -0.48,
                fontWeight: FontWeight.w600,
                height: 0.9166666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 109.0, start: 29.0),
            Pin(size: 23.0, start: 27.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Sofia Pro',
                  fontSize: 14,
                  color: const Color(0x5a02132b),
                  letterSpacing: -0.28,
                  height: 0.7857142857142857,
                ),
                children: [
                  TextSpan(
                    text: 'Bonjour, Anna',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' 👋',
                    style: TextStyle(
                      color: const Color(0xff02132b),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.4, end: 29.0),
            Pin(size: 42.4, start: 33.8),
            child:
                // Adobe XD layer: 'paula-palmieri-s1B0…' (shape)
                Container(
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
            Pin(size: 54.0, start: 29.0),
            Pin(size: 19.0, start: 109.0),
            child: Text(
              'Récents',
              style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 15,
                color: const Color(0xff02132b),
                fontWeight: FontWeight.w600,
                height: 1.4666666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.3134),
            Pin(size: 24.0, end: 30.0),
            child:
                // Adobe XD layer: 'vuesax/twotone/home' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'home' (group)
                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0.043, 0.429),
                      child: SizedBox(
                        width: 1.0,
                        height: 3.0,
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                          _svg_cmbnmf,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Vector' (shape)
                              SvgPicture.string(
                        _svg_lzrysc,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ),
                    SizedBox.expand(
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                      _svg_dnqk00,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.6895),
            Pin(size: 24.0, end: 30.0),
            child:
                // Adobe XD layer: 'vuesax/twotone/sett…' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'setting' (group)
                Stack(
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.1),
                      child: SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Vector' (shape)
                              SvgPicture.string(
                        _svg_taw6uq,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ),
                    Center(
                      child: SizedBox(
                        width: 6.0,
                        height: 6.0,
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                          _svg_i6zz,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    SizedBox.expand(
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                      _svg_egiyo,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 28.5),
            Pin(size: 1.0, start: 95.5),
            child: SvgPicture.string(
              _svg_uqx6ia,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.4897),
            Pin(size: 15.0, end: 115.0),
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
          Pinned.fromPins(
            Pin(start: 29.0, end: 29.0),
            Pin(size: 77.0, start: 27.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff34e694),
                    borderRadius: BorderRadius.circular(7.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x36eb5353),
                        offset: Offset(0, 3),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.004, -0.258),
                  child: SizedBox(
                    width: 82.0,
                    height: 15.0,
                    child: Text(
                      'Post publié !',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        height: 1.3333333333333333,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.006, 0.375),
                  child: SizedBox(
                    width: 162.0,
                    height: 13.0,
                    child: Text(
                      'Votre post a bien été publié.',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        color: const Color(0xbfffffff),
                        fontWeight: FontWeight.w500,
                        height: 1.3076923076923077,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.0, middle: 0.5),
            Pin(size: 61.0, end: 103.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 21.0,
                    height: 21.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 1.0, middle: 0.525),
                          Pin(start: 0.0, end: 0.0),
                          child: SvgPicture.string(
                            _svg_i70wy1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 1.0, middle: 0.525),
                          child: SvgPicture.string(
                            _svg_jizcf6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
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

const String _svg_cmbnmf =
    '<svg viewBox="568.0 203.0 1.0 3.0" ><path transform="translate(568.0, 203.0)" d="M 0 3 L 0 0" fill="none" fill-opacity="0.34" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.34" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_lzrysc =
    '<svg viewBox="558.0 190.2 20.0 19.6" ><path transform="translate(558.0, 190.18)" d="M 8.07319450378418 0.6362555027008057 L 1.143194913864136 6.18625545501709 C 0.3631949424743652 6.806255340576172 -0.1368052512407303 8.116254806518555 0.03319475054740906 9.096255302429199 L 1.363194704055786 17.05625534057617 C 1.603194713592529 18.47625541687012 2.963194847106934 19.62625503540039 4.403194904327393 19.62625503540039 L 15.60319519042969 19.62625503540039 C 17.03319549560547 19.62625503540039 18.40319442749023 18.46625518798828 18.6431941986084 17.05625534057617 L 19.97319412231445 9.096255302429199 C 20.13319396972656 8.116254806518555 19.6331958770752 6.806255340576172 18.86319541931152 6.18625545501709 L 11.93319511413574 0.6462554931640625 C 10.86319541931152 -0.2137445211410522 9.133193969726562 -0.2137445211410522 8.07319450378418 0.6362555027008057 Z" fill="none" stroke="#26292b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_dnqk00 =
    '<svg viewBox="556.0 188.0 24.0 24.0" ><path transform="translate(556.0, 188.0)" d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_taw6uq =
    '<svg viewBox="239.0 190.1 18.0 19.8" ><path transform="translate(239.0, 190.11)" d="M 0 6.999999523162842 L 0 12.77000045776367 C 0 14.89000034332275 0 14.88999938964844 2 16.23999977111816 L 7.5 19.42000007629395 C 8.329999923706055 19.89999961853027 9.680000305175781 19.89999961853027 10.5 19.42000007629395 L 16 16.23999977111816 C 18 14.88999938964844 18 14.89000034332275 18 12.78000068664551 L 18 6.999999523162842 C 18 4.889999389648438 18 4.889999866485596 16 3.539999961853027 L 10.5 0.3599999845027924 C 9.680000305175781 -0.1200000047683716 8.329999923706055 -0.1200000047683716 7.5 0.3599999845027924 L 2 3.539999961853027 C 0 4.889999866485596 0 4.889999389648438 0 6.999999523162842 Z" fill="none" fill-opacity="0.3" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_i6zz =
    '<svg viewBox="245.0 197.0 6.0 6.0" ><path transform="translate(245.0, 197.0)" d="M 6 3 C 6 4.656854152679443 4.656854152679443 6 3 6 C 1.343145728111267 6 0 4.656854152679443 0 3 C 0 1.343145728111267 1.343145728111267 0 3 0 C 4.656854152679443 0 6 1.343145728111267 6 3 Z" fill="none" fill-opacity="0.1" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_egiyo =
    '<svg viewBox="236.0 188.0 24.0 24.0" ><path transform="translate(236.0, 188.0)" d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uqx6ia =
    '<svg viewBox="29.5 95.5 317.0 1.0" ><path transform="translate(29.5, 95.5)" d="M 0 0 L 317 0" fill="none" stroke="#02132b" stroke-width="0.5" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i70wy1 =
    '<svg viewBox="187.5 668.5 1.0 21.0" ><path transform="translate(187.5, 668.5)" d="M 0 0 L 0 21" fill="none" stroke="#02132b" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jizcf6 =
    '<svg viewBox="177.0 679.0 21.0 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 198.0, 679.0)" d="M 0 0 L 0 21" fill="none" stroke="#02132b" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
