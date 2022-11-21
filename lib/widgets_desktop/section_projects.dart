import 'package:flutter/material.dart';

void main() => runApp(SectionProjectsView());

class SectionProjectsView extends StatefulWidget {
  @override
  _SectionProjectsViewState createState() => _SectionProjectsViewState();
}

bool touched = false;
String image1 = 'assets/images/001.jpg';
String image2 = 'assets/images/002.jpg';
String image3 = 'assets/images/003.jpg';
String image4 = 'assets/images/004.jpg';
String image5 = 'assets/images/005.jpg';
String image6 = 'assets/images/006.jpg';
String image7 = 'assets/images/007.jpg';
String image8 = 'assets/images/008.jpg';

class _SectionProjectsViewState extends State<SectionProjectsView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                      style: TextStyle(
                        color: Color(0XFFcc343c),
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                      ),
                      'Projetos')
                ]),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverImage(
                        image: image1,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image2,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image3,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverImage(
                        image: image5,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image6,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image7,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      HoverImage(
                        image: image8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  final String image;

  const HoverImage({required this.image});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Animation padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 1.2).animate(CurvedAnimation(parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    padding = Tween(begin: 0.0, end: -25.0).animate(CurvedAnimation(parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          _controller.forward();
        });
      },
      onExit: (value) {
        setState(() {
          _controller.reverse();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              // offset: Offset(0.0, 20.0),
              // spreadRadius: -10.0,
              // blurRadius: 20.0,
            )
          ],
        ),
        child: Container(
          height: 200,
          width: 280,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20.0),
              ),
          clipBehavior: Clip.hardEdge,
          transform: Matrix4(_animation.value, 0, 0, 0, 0, _animation.value, 0, 0, 0, 0, 1, 0, padding.value, padding.value, 0, 1),
          child: Image.network(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
