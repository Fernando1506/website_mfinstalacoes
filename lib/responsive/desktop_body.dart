import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_responsive/widgets_desktop/header.dart';
import '../widgets_desktop/carousel.dart';
import '../widgets_desktop/footer.dart';
import '../widgets_desktop/from_top.dart';
import '../widgets_public/inkwell.dart';
import '../widgets_desktop/section_company.dart';
import '../widgets_desktop/section_contacts.dart';
import '../widgets_desktop/section_projects.dart';
import '../widgets_desktop/section_services.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  // Height of your Container

  static final _containerHeight = 60.0;

  // You don't need to change any of these variables
  var _fromTop = -_containerHeight;
  var _controller = ScrollController();
  var _allowReverse = true, _allowForward = true;
  var _prevOffset = 0.0;
  var _prevForwardOffset = -_containerHeight;
  var _prevReverseOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_listener);
  }

  // entire logic is inside this listener for ListView
  void _listener() {
    double offset = _controller.offset;
    var direction = _controller.position.userScrollDirection;

    if (direction == ScrollDirection.reverse) {
      _allowForward = true;

      if (_allowReverse) {
        _allowReverse = false;
        _prevOffset = offset;
        _prevForwardOffset = _fromTop;
      }

      var difference = offset - _prevOffset;
      _fromTop = _prevForwardOffset + difference;
      if (_fromTop > 0) _fromTop = 0;
    } else if (direction == ScrollDirection.forward) {
      _allowReverse = true;

      if (_allowForward) {
        _allowForward = false;
        _prevReverseOffset = _fromTop;
      }

      var difference = offset - _prevOffset;

      if (offset > 100.0) {
        _prevOffset = offset;
      }

      if (offset < 100.0) {
        _fromTop = _prevReverseOffset + difference;
        if (_fromTop < -_containerHeight) _fromTop = -_containerHeight;
      }
    }
    setState(() {});
  }

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Stack(
        children: <Widget>[
          _ScrollViewHome(screenSize),
          Positioned(
            top: _fromTop,
            left: 0,
            right: 0,
            child: yourContainer(_containerHeight, context),
          )
        ],
      ),
    );
  }

  final _scrollController = ScrollController();
  Widget _ScrollViewHome(var screenSize) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ----------------------------------- HEADER TOPO --------------------------------------------------------
          HeaderView(),

          // ----------------------------------- COROUSEL BANNER --------------------------------------------------------
          AspectRatio(
            aspectRatio: 16 / 7,
            child: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: screenSize.height * 0.3,
                color: Colors.transparent,
                child: DestinationCarousel(),
              ),
            ),
          ),

          // // ----------------------------------- SECTION COMPANY -------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: SectionCompanyView(),
          ),

          // // ----------------------------------- SECTION SERVICES ------------------------------------------------------
          AspectRatio(
            aspectRatio: 16 / 6,
            child: ClipPath(
              clipper: OvalTopBorderClipper(),
              child: SectionServicesView(),
            ),
          ),

          // // ----------------------------------- SECTION PROJECTS ------------------------------------------------------
          AspectRatio(
            aspectRatio: 16 / 8,
            child: SectionProjectsView(),
          ),

          // -----------------------------------  SECTION CONTACTS --------------------------------------------------------
          AspectRatio(
            aspectRatio: 16 / 3.5,
            child: SectionContactsView(),
          ),

          // -----------------------------------  FOOTER --------------------------------------------------------
          FooterView(),
        ],
      ),
    );
  }
}
