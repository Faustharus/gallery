import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDCrationDunPostImageCharge extends StatelessWidget {
  XDCrationDunPostImageCharge({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 223.0, start: 29.0),
            Pin(size: 28.0, start: 90.0),
            child: Text(
              'Choisissez une image',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 2.05,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.6, start: 23.0),
            Pin(size: 16.8, start: 53.2),
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
                              _svg_z3fg6a,
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
          Pinned.fromPins(
            Pin(start: 29.0, end: 29.0),
            Pin(size: 538.7, middle: 0.5049),
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'pexels-hamann-la-12…' (shape)
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                    border:
                        Border.all(width: 0.5, color: const Color(0x81000000)),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 28.0),
            Pin(size: 54.0, end: 61.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff02132b),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.008, 0.0),
                  child: SizedBox(
                    width: 54.0,
                    height: 20.0,
                    child: Text(
                      'Suivant',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        height: 1.2142857142857142,
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
            Pin(size: 34.0, end: 18.0),
            Pin(size: 34.0, start: 125.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffe83c3c),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 2.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 15.2, end: 27.4),
            Pin(size: 16.0, start: 134.0),
            child:
                // Adobe XD layer: 'delete' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(1.6, 2.3, 1.6, 0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_m0sxm,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.2, start: 2.3),
                  child: SvgPicture.string(
                    _svg_oivjbo,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 6.0,
                    height: 4.0,
                    child: SvgPicture.string(
                      _svg_c81,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.333, 0.273),
                  child: SizedBox(
                    width: 1.0,
                    height: 7.0,
                    child: SvgPicture.string(
                      _svg_ns1k,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.333, 0.273),
                  child: SizedBox(
                    width: 1.0,
                    height: 7.0,
                    child: SvgPicture.string(
                      _svg_dv1s06,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 0.273),
                  child: SizedBox(
                    width: 1.0,
                    height: 7.0,
                    child: SvgPicture.string(
                      _svg_ixsux,
                      allowDrawingOutsideViewBox: true,
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

const String _svg_z3fg6a =
    '<svg viewBox="0.0 0.0 19.6 16.8" ><path transform="translate(0.0, -31.88)" d="M 0.4104275107383728 39.29095077514648 C 0.4107777178287506 39.29060363769531 0.4111719727516174 39.29020690917969 0.4115220904350281 39.28985977172852 L 7.41850471496582 32.28287887573242 C 7.968202590942383 31.73803520202637 8.855504989624023 31.74197959899902 9.400341033935547 32.29168319702148 C 9.443389892578125 32.33512115478516 9.483548164367676 32.38132858276367 9.520597457885742 32.43002319335938 C 9.913471221923828 33.01603317260742 9.827723503112793 33.79971313476562 9.317395210266113 34.28687286376953 L 5.449542999267578 38.16874313354492 C 5.243930816650391 38.37456893920898 5.007534503936768 38.54716110229492 4.748844146728516 38.68025207519531 L 4.321417808532715 38.90447616577148 L 18.09013748168945 38.90447616577148 C 18.79516792297363 38.87482070922852 19.41922760009766 39.35695266723633 19.5686092376709 40.04661178588867 C 19.6924991607666 40.81059646606445 19.17363357543945 41.53038024902344 18.40961074829102 41.65427398681641 C 18.32946586608887 41.66728210449219 18.24836349487305 41.67328262329102 18.16721153259277 41.6722297668457 L 4.349446296691895 41.6722297668457 L 4.650746822357178 41.81237411499023 C 4.944735050201416 41.94966506958008 5.212618827819824 42.13697052001953 5.442535877227783 42.36592483520508 L 9.317395210266113 46.24078750610352 C 9.827724456787109 46.72794723510742 9.913471221923828 47.51163864135742 9.520599365234375 48.09763717651367 C 9.063349723815918 48.72209548950195 8.186469078063965 48.85767364501953 7.561974048614502 48.40042114257812 C 7.511523246765137 48.36346054077148 7.463569164276123 48.32317352294922 7.418506145477295 48.27981567382812 L 0.4115234315395355 41.2728385925293 C -0.1360293477773666 40.72585296630859 -0.136511817574501 39.83854675292969 0.4104275107383728 39.29095077514648 Z" fill="#222222" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m0sxm =
    '<svg viewBox="3.8 4.1 12.1 13.7" ><path transform="translate(-0.44, -0.66)" d="M 13.30312728881836 18.41979026794434 L 7.304042339324951 18.41979026794434 C 6.05918025970459 18.40179061889648 5.038075923919678 17.42833709716797 4.960649490356445 16.18575477600098 L 4.249820232391357 5.374903678894043 C 4.242459297180176 5.216583251953125 4.298710346221924 5.061892986297607 4.406046390533447 4.945281028747559 C 4.516671180725098 4.824377536773682 4.67183780670166 4.753847122192383 4.835668563842773 4.749998569488525 L 15.77150058746338 4.749998569488525 C 15.93388843536377 4.749637603759766 16.08914184570312 4.816692352294922 16.20020484924316 4.935159683227539 C 16.3112678527832 5.053627014160156 16.36817741394043 5.212877750396729 16.35735130310059 5.374903678894043 L 15.67776489257812 16.18575477600098 C 15.59946537017822 17.44024658203125 14.56005859375 18.4181079864502 13.30312633514404 18.4197883605957 Z M 5.491818904876709 5.921695709228516 L 6.093289375305176 16.11545372009277 C 6.13453483581543 16.75344848632812 6.664716243743896 17.24942588806152 7.304042339324951 17.24809265136719 L 13.30312728881836 17.24809265136719 C 13.94093799591064 17.24559211730957 14.46891021728516 16.75168037414551 14.51387977600098 16.11545372009277 L 15.1465950012207 5.960751533508301 L 5.491818904876709 5.921695709228516 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oivjbo =
    '<svg viewBox="2.3 4.1 15.2 1.2" ><path transform="translate(0.0, -0.66)" d="M 16.89620399475098 5.921696186065674 L 2.835848331451416 5.921696186065674 C 2.512293100357056 5.921696662902832 2.25 5.659403324127197 2.25 5.335848331451416 C 2.25 5.012293338775635 2.512293100357056 4.750000476837158 2.835848331451416 4.750000476837158 L 16.89620399475098 4.75 C 17.21975898742676 4.750000476837158 17.48205184936523 5.012293338775635 17.48205184936523 5.335848331451416 C 17.48205184936523 5.659403324127197 17.21975898742676 5.921696662902832 16.89620399475098 5.921696662902832 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c81 =
    '<svg viewBox="6.9 1.8 5.9 3.5" ><path transform="translate(-1.31, 0.0)" d="M 13.52263355255127 5.26508903503418 L 8.835847854614258 5.26508903503418 C 8.514052391052246 5.260881900787354 8.254207611083984 5.001037120819092 8.25 4.679240703582764 L 8.25 3.273205280303955 C 8.270566940307617 2.440630197525024 8.940630912780762 1.770566940307617 9.773204803466797 1.75000011920929 L 12.58527565002441 1.75 C 13.43279933929443 1.771194458007812 14.10874652862549 2.464473724365234 14.10848140716553 3.312262058258057 L 14.10848045349121 4.679240703582764 C 14.10427379608154 5.001037120819092 13.84442901611328 5.260881900787354 13.52263259887695 5.26508903503418 Z M 9.421696662902832 4.093392848968506 L 12.93678569793701 4.093392848968506 L 12.93678569793701 3.312261819839478 C 12.93678569793701 3.118128776550293 12.77940940856934 2.960752964019775 12.58527660369873 2.960752964019775 L 9.773205757141113 2.960752725601196 C 9.579072952270508 2.960752964019775 9.421696662902832 3.118129014968872 9.421696662902832 3.312262058258057 L 9.421696662902832 4.093392848968506 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ns1k =
    '<svg viewBox="11.6 7.2 1.2 7.4" ><path transform="translate(-2.63, -1.53)" d="M 14.83584785461426 16.17074394226074 C 14.51405143737793 16.16653633117676 14.25420665740967 15.90669250488281 14.24999904632568 15.58489608764648 L 14.25 9.335847854614258 C 14.25 9.012293815612793 14.51229286193848 8.75 14.83584785461426 8.75 C 15.15940284729004 8.75 15.42169570922852 9.012293815612793 15.42169570922852 9.335847854614258 L 15.42169570922852 15.58489608764648 C 15.41748905181885 15.90669250488281 15.15764331817627 16.16653633117676 14.83584785461426 16.17074394226074 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dv1s06 =
    '<svg viewBox="6.9 7.2 1.2 7.4" ><path transform="translate(-1.31, -1.53)" d="M 8.835847854614258 16.17074394226074 C 8.514052391052246 16.16653633117676 8.254207611083984 15.90669250488281 8.25 15.58489608764648 L 8.25 9.335847854614258 C 8.25 9.012293815612793 8.512293815612793 8.75 8.835847854614258 8.75 C 9.159402847290039 8.75 9.421696662902832 9.012293815612793 9.421696662902832 9.335847854614258 L 9.421696662902832 15.58489608764648 C 9.417489051818848 15.90669250488281 9.157644271850586 16.16653633117676 8.835847854614258 16.17074394226074 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ixsux =
    '<svg viewBox="9.3 7.2 1.2 7.4" ><path transform="translate(-1.97, -1.53)" d="M 11.83584880828857 16.17074394226074 C 11.51405239105225 16.16653633117676 11.25420761108398 15.90669250488281 11.25 15.58489608764648 L 11.25 9.335847854614258 C 11.25 9.012293815612793 11.51229381561279 8.75 11.83584880828857 8.75 C 12.15940284729004 8.75 12.42169666290283 9.012293815612793 12.42169666290283 9.335847854614258 L 12.42169666290283 15.58489608764648 C 12.41748905181885 15.90669250488281 12.15764427185059 16.16653633117676 11.83584880828857 16.17074394226074 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
