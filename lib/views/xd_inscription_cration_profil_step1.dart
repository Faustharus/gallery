import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDInscriptionCrationProfilStep1 extends StatelessWidget {
  XDInscriptionCrationProfilStep1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 202.0, middle: 0.5029),
            Pin(size: 32.0, start: 121.0),
            child: Text(
              'Créez votre profil',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                color: const Color(0xff02132b),
                fontWeight: FontWeight.w700,
                height: 1.3043478260869565,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 29.0),
            Pin(size: 436.1, middle: 0.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 92.1, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 54.0, start: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff02132b),
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.019, 0.086),
                              child: SizedBox(
                                width: 152.0,
                                height: 20.0,
                                child: Text(
                                  'Terminer l’inscription',
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
                        Pin(start: 32.0, end: 32.0),
                        Pin(size: 17.0, end: 0.0),
                        child: Text(
                          '* Les champs marqués sont obligatoires ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: const Color(0xbf02132b),
                            fontWeight: FontWeight.w500,
                            height: 1.9166666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 77.0, start: 0.0),
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
                                  Pin(size: 19.0, middle: 0.5143),
                                  child: Text(
                                    'Ex. Doe',
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
                          width: 34.0,
                          height: 17.0,
                          child: Text(
                            'Nom*',
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
                  Pin(size: 77.0, middle: 0.2534),
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
                                  Pin(size: 19.0, middle: 0.5143),
                                  child: Text(
                                    'Ex. John',
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
                          width: 54.0,
                          height: 17.0,
                          child: Text(
                            'Prénom*',
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
                  Pin(size: 131.0, middle: 0.5834),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 94.0,
                          height: 17.0,
                          child: Text(
                            'Photo de profil*',
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 0.0),
                        child: Stack(
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
                                  Pin(start: 46.0, end: 46.0),
                                  Pin(size: 19.0, middle: 0.664),
                                  child: Text(
                                    'Appuyez pour choisir une photo',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      color: const Color(0x6902132b),
                                      fontWeight: FontWeight.w500,
                                      height: 1.7692307692307692,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.0, -0.288),
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 21.0,
                                    child:
                                        // Adobe XD layer: 'upload' (group)
                                        Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 0.0, 2.5),
                                          child: SizedBox.expand(
                                              child: SvgPicture.string(
                                            _svg_qb376,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            width: 10.0,
                                            height: 14.0,
                                            child: SvgPicture.string(
                                              _svg_x7a,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
        ],
      ),
    );
  }
}

const String _svg_qb376 =
    '<svg viewBox="0.0 0.0 25.4 18.7" ><path transform="translate(-1.0, -4.99)" d="M 20.29043006896973 10.12395286560059 C 19.53638648986816 7.109832286834717 16.82881164550781 4.994904518127441 13.72180461883545 4.993100643157959 C 10.6147985458374 4.991296768188477 7.904768466949463 7.10307788848877 7.147226333618164 10.11632061004639 C 3.539549112319946 10.4548921585083 0.8349109888076782 13.56901931762695 1.004948496818542 17.18855857849121 C 1.174985647201538 20.8080940246582 4.159656524658203 23.65495300292969 7.783186435699463 23.6538200378418 L 10.32703304290771 23.6538200378418 C 10.79534244537354 23.6538200378418 11.17498111724854 23.2741813659668 11.17498111724854 22.80587196350098 C 11.17498111724854 22.33756256103516 10.79534149169922 21.95792388916016 10.32703304290771 21.95792388916016 L 7.783186912536621 21.95792388916016 C 4.973332405090332 21.96611785888672 2.688851833343506 19.69492340087891 2.680656433105469 16.88507080078125 C 2.672461032867432 14.07521724700928 4.943654537200928 11.79073715209961 7.753509044647217 11.7825403213501 C 8.204241752624512 11.8164701461792 8.607402801513672 11.50346946716309 8.686252593994141 11.05839252471924 C 9.043217658996582 8.555133819580078 11.18685722351074 6.695491313934326 13.71543788909912 6.695491790771484 C 16.2440185546875 6.695491790771484 18.38765907287598 8.555134773254395 18.7446231842041 11.05839157104492 C 18.83608436584473 11.48606300354004 19.21718215942383 11.78937816619873 19.65447044372559 11.78254222869873 C 22.46432495117188 11.78254222869873 24.74216270446777 14.06037998199463 24.74216270446777 16.8702335357666 C 24.74216270446777 19.68008804321289 22.46432495117188 21.95792579650879 19.65447044372559 21.95792579650879 L 17.11062431335449 21.95792388916016 C 16.64231491088867 21.95792388916016 16.26267623901367 22.33756256103516 16.26267623901367 22.80587196350098 C 16.26267623901367 23.2741813659668 16.64231491088867 23.6538200378418 17.11062431335449 23.6538200378418 L 19.65447044372559 23.6538200378418 C 23.24948310852051 23.61619567871094 26.19078636169434 20.78035163879395 26.35958862304688 17.18910789489746 C 26.52839279174805 13.59786605834961 23.86606407165527 10.49862670898438 20.29043388366699 10.12395095825195 Z" fill="#9299a4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7a =
    '<svg viewBox="7.6 6.8 10.2 14.4" ><path transform="translate(-2.37, -6.21)" d="M 18.72793769836426 18.68722534179688 C 19.05899238586426 19.01845932006836 19.59588241577148 19.01845932006836 19.92702865600586 18.68731498718262 C 20.2581729888916 18.35616874694824 20.2581729888916 17.81927871704102 19.92702865600586 17.48813247680664 L 15.68719291687012 13.2484827041626 C 15.35606956481934 12.91745853424072 14.81931686401367 12.91745853424072 14.48819351196289 13.2484827041626 L 10.24844932556152 17.48822593688965 C 9.917215347290039 17.81927871704102 9.917215347290039 18.35616874694824 10.24835968017578 18.68731498718262 C 10.57950401306152 19.01845932006836 11.11639404296875 19.01845932006836 11.44754028320312 18.68731498718262 L 14.23974418640137 15.89493083953857 L 14.23974418640137 26.56721305847168 C 14.23974418640137 27.0355224609375 14.619384765625 27.4151611328125 15.08769416809082 27.4151611328125 C 15.55600166320801 27.4151611328125 15.93564224243164 27.0355224609375 15.93564224243164 26.56721305847168 L 15.93564224243164 15.89493083953857 L 18.72793769836426 18.68722534179688 Z" fill="#9299a4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yvy97a =
    '<svg viewBox="0.0 0.0 19.6 16.8" ><path transform="translate(0.0, -31.88)" d="M 0.4104275107383728 39.29095077514648 C 0.4107777178287506 39.29060363769531 0.4111719727516174 39.29020690917969 0.4115220904350281 39.28985977172852 L 7.41850471496582 32.28287887573242 C 7.968202590942383 31.73803520202637 8.855504989624023 31.74197959899902 9.400341033935547 32.29168319702148 C 9.443389892578125 32.33512115478516 9.483548164367676 32.38132858276367 9.520597457885742 32.43002319335938 C 9.913471221923828 33.01603317260742 9.827723503112793 33.79971313476562 9.317395210266113 34.28687286376953 L 5.449542999267578 38.16874313354492 C 5.243930816650391 38.37456893920898 5.007534503936768 38.54716110229492 4.748844146728516 38.68025207519531 L 4.321417808532715 38.90447616577148 L 18.09013748168945 38.90447616577148 C 18.79516792297363 38.87482070922852 19.41922760009766 39.35695266723633 19.5686092376709 40.04661178588867 C 19.6924991607666 40.81059646606445 19.17363357543945 41.53038024902344 18.40961074829102 41.65427398681641 C 18.32946586608887 41.66728210449219 18.24836349487305 41.67328262329102 18.16721153259277 41.6722297668457 L 4.349446296691895 41.6722297668457 L 4.650746822357178 41.81237411499023 C 4.944735050201416 41.94966506958008 5.212618827819824 42.13697052001953 5.442535877227783 42.36592483520508 L 9.317395210266113 46.24078750610352 C 9.827724456787109 46.72794723510742 9.913471221923828 47.51163864135742 9.520599365234375 48.09763717651367 C 9.063349723815918 48.72209548950195 8.186469078063965 48.85767364501953 7.561974048614502 48.40042114257812 C 7.511523246765137 48.36346054077148 7.463569164276123 48.32317352294922 7.418506145477295 48.27981567382812 L 0.4115234315395355 41.2728385925293 C -0.1360293477773666 40.72585296630859 -0.136511817574501 39.83854675292969 0.4104275107383728 39.29095077514648 Z" fill="#02132b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
