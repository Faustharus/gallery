import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDCrationDunPostStep2 extends StatelessWidget {
  XDCrationDunPostStep2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 241.0, start: 29.0),
            Pin(size: 28.0, start: 90.0),
            child: Text(
              'Ajouter une description',
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
            Pin(start: 30.0, end: 28.0),
            Pin(size: 54.0, end: 61.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x4402132b),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.007, 0.0),
                  child: SizedBox(
                    width: 50.0,
                    height: 20.0,
                    child: Text(
                      'Publier',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: const Color(0x44ffffff),
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
            Pin(start: 29.0, end: 29.0),
            Pin(size: 538.7, middle: 0.5159),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff7f7f8),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 225.0, start: 16.0),
                          Pin(size: 19.0, start: 12.1),
                          child: Text(
                            'Décrivez votre post..',
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
