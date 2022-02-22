import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gallery/screens/empty_screen.dart';
import 'package:gallery/screens/live_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 0,
        child: Scaffold(
          //bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              // LiveScreen(),
              // EmptyScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Stack(
      children: <Widget>[
        Container(
          height: 80,
          color: Colors.blue,
          child: TabBar(
            indicatorPadding: const EdgeInsets.all(16),
            tabs: [
              Tab(
                icon: _homeIcon(),
              ),
              const Tab(
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _homeIcon() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          child: SvgPicture.string(
            _svg_pentagon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                width: 1.0,
                height: 3.0,
                child: SvgPicture.string(
                  _svg_verticalDash,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

const String _svg_verticalDash =
    '<svg viewBox="568.0 203.0 1.0 3.0" ><path transform="translate(568.0, 203.0)" d="M 0 3 L 0 0" fill="none" fill-opacity="0.34" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.34" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pentagon =
    '<svg viewBox="558.0 190.2 20.0 19.6" ><path transform="translate(558.0, 190.18)" d="M 8.07319450378418 0.6362555027008057 L 1.143194913864136 6.18625545501709 C 0.3631949424743652 6.806255340576172 -0.1368052512407303 8.116254806518555 0.03319475054740906 9.096255302429199 L 1.363194704055786 17.05625534057617 C 1.603194713592529 18.47625541687012 2.963194847106934 19.62625503540039 4.403194904327393 19.62625503540039 L 15.60319519042969 19.62625503540039 C 17.03319549560547 19.62625503540039 18.40319442749023 18.46625518798828 18.6431941986084 17.05625534057617 L 19.97319412231445 9.096255302429199 C 20.13319396972656 8.116254806518555 19.6331958770752 6.806255340576172 18.86319541931152 6.18625545501709 L 11.93319511413574 0.6462554931640625 C 10.86319541931152 -0.2137445211410522 9.133193969726562 -0.2137445211410522 8.07319450378418 0.6362555027008057 Z" fill="none" stroke="#26292b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_dnqk00 =
    '<svg viewBox="556.0 188.0 24.0 24.0" ><path transform="translate(556.0, 188.0)" d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_taw6uq =
    '<svg viewBox="239.0 190.1 18.0 19.8" ><path transform="translate(239.0, 190.11)" d="M 0 6.999999523162842 L 0 12.77000045776367 C 0 14.89000034332275 0 14.88999938964844 2 16.23999977111816 L 7.5 19.42000007629395 C 8.329999923706055 19.89999961853027 9.680000305175781 19.89999961853027 10.5 19.42000007629395 L 16 16.23999977111816 C 18 14.88999938964844 18 14.89000034332275 18 12.78000068664551 L 18 6.999999523162842 C 18 4.889999389648438 18 4.889999866485596 16 3.539999961853027 L 10.5 0.3599999845027924 C 9.680000305175781 -0.1200000047683716 8.329999923706055 -0.1200000047683716 7.5 0.3599999845027924 L 2 3.539999961853027 C 0 4.889999866485596 0 4.889999389648438 0 6.999999523162842 Z" fill="none" fill-opacity="0.3" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_i6zz =
    '<svg viewBox="245.0 197.0 6.0 6.0" ><path transform="translate(245.0, 197.0)" d="M 6 3 C 6 4.656854152679443 4.656854152679443 6 3 6 C 1.343145728111267 6 0 4.656854152679443 0 3 C 0 1.343145728111267 1.343145728111267 0 3 0 C 4.656854152679443 0 6 1.343145728111267 6 3 Z" fill="none" fill-opacity="0.1" stroke="#26292b" stroke-width="1.5" stroke-opacity="0.1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_egiyo =
    '<svg viewBox="236.0 188.0 24.0 24.0" ><path transform="translate(236.0, 188.0)" d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i70wy1 =
    '<svg viewBox="187.5 668.5 1.0 21.0" ><path transform="translate(187.5, 668.5)" d="M 0 0 L 0 21" fill="none" stroke="#02132b" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jizcf6 =
    '<svg viewBox="177.0 679.0 21.0 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 198.0, 679.0)" d="M 0 0 L 0 21" fill="none" stroke="#02132b" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_uqx6ia =
    '<svg viewBox="29.5 95.5 317.0 1.0" ><path transform="translate(29.5, 95.5)" d="M 0 0 L 317 0" fill="none" stroke="#02132b" stroke-width="0.5" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
