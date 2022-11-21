import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.jpg',
  ];

  final List<String> places = [
    '',
    '',
    '',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            // borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 6),
              enlargeCenterPage: false,
              // aspectRatio: 18 / 8,
              viewportFraction: 1.0,
              height: 600,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: TextStyle(
                letterSpacing: 8,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: screenSize.width / 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // Card(
        //   elevation: 5,
        //   child: Padding(
        //     padding: EdgeInsets.only(
        //       top: screenSize.height / 50,
        //       bottom: screenSize.height / 50,
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         for (int i = 0; i < places.length; i++)
        //           Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               InkWell(
        //                 splashColor: Colors.transparent,
        //                 hoverColor: Colors.transparent,
        //                 onHover: (value) {
        //                   setState(() {
        //                     value ? _isHovering[i] = true : _isHovering[i] = false;
        //                   });
        //                 },
        //                 onTap: () {
        //                   _controller.animateToPage(i);
        //                 },
        //                 child: Padding(
        //                   padding: EdgeInsets.only(top: screenSize.height / 80, bottom: screenSize.height / 90),
        //                   child: Text(
        //                     places[i],
        //                     style: TextStyle(
        //                       color: _isHovering[i] ? Theme.of(context).primaryTextTheme.button!.decorationColor : Theme.of(context).primaryTextTheme.button!.color,
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Visibility(
        //                 maintainSize: true,
        //                 maintainAnimation: true,
        //                 maintainState: true,
        //                 visible: _isSelected[i],
        //                 child: AnimatedOpacity(
        //                   duration: Duration(milliseconds: 400),
        //                   opacity: _isSelected[i] ? 1 : 0,
        //                   child: Container(
        //                     height: 5,
        //                     decoration: BoxDecoration(
        //                       color: Colors.blueGrey,
        //                       borderRadius: BorderRadius.all(
        //                         Radius.circular(10),
        //                       ),
        //                     ),
        //                     width: screenSize.width / 10,
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //       ],
        //     ),
        //   ),
        // ),
        Positioned(
          height: screenSize.height * 0.83,
          left: screenSize.width * .02,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Color.fromARGB(137, 90, 90, 90), primary: Colors.transparent, shadowColor: Colors.transparent.withOpacity(0.5), padding: const EdgeInsets.all(15)),
            child: const Icon(
              Icons.arrow_back,
              size: 20,
            ),
            onPressed: () {
              _controller.previousPage();
            },
          ),

          // IconButton(
          //   onPressed: () {
          //     // Use the controller to change the current page
          //     _controller.previousPage();
          //   },
          //   icon: Icon(Icons.arrow_back),
          // ),
        ),
        Positioned(
          height: screenSize.height * 0.83,
          left: screenSize.width * .94,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Color.fromARGB(137, 90, 90, 90), primary: Colors.transparent, shadowColor: Colors.transparent.withOpacity(0.5), padding: const EdgeInsets.all(15)),
            child: const Icon(
              Icons.arrow_forward,
              size: 20,
            ),
            onPressed: () {
              _controller.nextPage();
            },
          ),

          // IconButton(
          //   onPressed: () {
          //     // Use the controller to change the current page
          //     _controller.nextPage();
          //   },
          //   icon: Icon(Icons.arrow_forward),
          // ),
        ),
      ],
    );
  }
}
