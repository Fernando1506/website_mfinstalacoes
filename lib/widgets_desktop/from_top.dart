import 'package:flutter/material.dart';

import '../screens/contact_form.dart';
import '../widgets_public/inkwell.dart';

Widget yourContainer(double containerHeight, context) {
  var screenSize = MediaQuery.of(context).size;
  return Opacity(
    opacity: 1,
    child: Container(
      height: containerHeight,
      color: Color(0XFFcc343c),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverBuilder(builder: (isHovered) {
                  return Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: isHovered ? Colors.black87 : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovered,
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  );
                }),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                HoverBuilder(builder: (isHovered) {
                  return Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Sobre Nós',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: isHovered ? Colors.black87 : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovered,
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  );
                }),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                HoverBuilder(builder: (isHovered) {
                  return Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Serviços',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: isHovered ? Colors.black87 : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovered,
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  );
                }),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                HoverBuilder(builder: (isHovered) {
                  return Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Projetos',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: isHovered ? Colors.black87 : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovered,
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  );
                }),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                ElevatedButton(
                  child: Text(
                    'Entre em Contato',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ContactFormView()),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.white, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), textStyle: TextStyle(fontSize: 15, color: Colors.red)),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
