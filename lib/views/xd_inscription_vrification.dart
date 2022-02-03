import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDInscriptionVrification extends StatelessWidget {
  XDInscriptionVrification({
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
            Pin(size: 441.0, start: 120.0),
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
                              color: const Color(0xff02132b),
                              borderRadius: BorderRadius.circular(7.0),
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
                      Pin(size: 77.0, middle: 0.2198),
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
                      Pin(size: 77.0, middle: 0.4698),
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
                      Pin(size: 77.0, middle: 0.7198),
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
                              _svg_yvy97a,
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
          Pinned.fromPins(
            Pin(start: 47.0, end: 46.0),
            Pin(size: 274.0, middle: 0.5),
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
                      Pin(start: 31.0, end: 32.0),
                      Pin(size: 54.0, middle: 0.2505),
                      child: Text(
                        'Vérifiez votre boîte mail',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: const Color(0xff02132b),
                          fontWeight: FontWeight.w600,
                          height: 1.4210526315789473,
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
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 60.0, middle: 0.5374),
                  child: Text(
                    'Un email de vérification vous a été envoyé à l’adresse john*****gmail.com',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: const Color(0xffa7adb5),
                      fontWeight: FontWeight.w500,
                      height: 1.4285714285714286,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 139.0, middle: 0.5035),
                  Pin(size: 54.0, end: 17.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff02132b),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 20.0,
                          child: Text(
                            'Fermer',
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
const String _svg_yvy97a =
    '<svg viewBox="0.0 0.0 19.6 16.8" ><path transform="translate(0.0, -31.88)" d="M 0.4104275107383728 39.29095077514648 C 0.4107777178287506 39.29060363769531 0.4111719727516174 39.29020690917969 0.4115220904350281 39.28985977172852 L 7.41850471496582 32.28287887573242 C 7.968202590942383 31.73803520202637 8.855504989624023 31.74197959899902 9.400341033935547 32.29168319702148 C 9.443389892578125 32.33512115478516 9.483548164367676 32.38132858276367 9.520597457885742 32.43002319335938 C 9.913471221923828 33.01603317260742 9.827723503112793 33.79971313476562 9.317395210266113 34.28687286376953 L 5.449542999267578 38.16874313354492 C 5.243930816650391 38.37456893920898 5.007534503936768 38.54716110229492 4.748844146728516 38.68025207519531 L 4.321417808532715 38.90447616577148 L 18.09013748168945 38.90447616577148 C 18.79516792297363 38.87482070922852 19.41922760009766 39.35695266723633 19.5686092376709 40.04661178588867 C 19.6924991607666 40.81059646606445 19.17363357543945 41.53038024902344 18.40961074829102 41.65427398681641 C 18.32946586608887 41.66728210449219 18.24836349487305 41.67328262329102 18.16721153259277 41.6722297668457 L 4.349446296691895 41.6722297668457 L 4.650746822357178 41.81237411499023 C 4.944735050201416 41.94966506958008 5.212618827819824 42.13697052001953 5.442535877227783 42.36592483520508 L 9.317395210266113 46.24078750610352 C 9.827724456787109 46.72794723510742 9.913471221923828 47.51163864135742 9.520599365234375 48.09763717651367 C 9.063349723815918 48.72209548950195 8.186469078063965 48.85767364501953 7.561974048614502 48.40042114257812 C 7.511523246765137 48.36346054077148 7.463569164276123 48.32317352294922 7.418506145477295 48.27981567382812 L 0.4115234315395355 41.2728385925293 C -0.1360293477773666 40.72585296630859 -0.136511817574501 39.83854675292969 0.4104275107383728 39.29095077514648 Z" fill="#02132b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e70oto =
    '<svg viewBox="0.0 0.0 14.9 14.8" ><path transform="translate(0.0, -2.44)" d="M 1.426504492759705 17.30369186401367 C 1.057692289352417 17.32513427734375 0.6949803233146667 17.2025260925293 0.4148520827293396 16.96171951293945 C -0.1376152187585831 16.40596771240234 -0.1376152187585831 15.50838375091553 0.4148520827293396 14.9526309967041 L 12.51207447052002 2.855362415313721 C 13.08668994903564 2.317675590515137 13.98835563659668 2.347565412521362 14.52604198455811 2.92218017578125 C 15.01225471496582 3.441801786422729 15.04059600830078 4.240471839904785 14.5923900604248 4.793220520019531 L 2.423892498016357 16.96172142028809 C 2.147377014160156 17.19905471801758 1.790483355522156 17.3214282989502 1.426504611968994 17.30369186401367 Z" fill="#d8d8d8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cwsaog =
    '<svg viewBox="0.1 0.0 15.0 14.9" ><path transform="translate(-1.46, -1.84)" d="M 14.96554374694824 16.70624542236328 C 14.59175777435303 16.70465087890625 14.23350143432617 16.5562801361084 13.96810817718506 16.29304504394531 L 1.870839476585388 4.195727825164795 C 1.359007120132446 3.598026990890503 1.428593397140503 2.698519706726074 2.026294231414795 2.186640501022339 C 2.559757709503174 1.729801654815674 3.346509695053101 1.729801654815674 3.879926443099976 2.186640501022339 L 16.04842376708984 14.28390884399414 C 16.62289810180664 14.82173633575439 16.65260314941406 15.72344970703125 16.11477470397949 16.29792404174805 C 16.09337615966797 16.32077407836914 16.0712776184082 16.34287452697754 16.04842376708984 16.36427116394043 C 15.75046539306641 16.62337875366211 15.35833358764648 16.74720764160156 14.96554374694824 16.70624351501465 Z" fill="#d8d8d8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
