import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else if (constraints.maxWidth < tabletWidth) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
