import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/contact_form.dart';
import '../widgets_public/inkwell.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: screenSize.height * 0.06,
          color: Color(0XFFcc343c),
          child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.phone,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '16 99171-3134',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                // SizedBox(
                //   height: 22,
                //   child: Image.asset('assets/images/whatsapp.png'),
                // ),
                // SizedBox(
                //   width: 5,
                // ),
                // Text(
                //   '16 99616-6164',
                //   style: TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.white),
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                Icon(
                  Icons.mail_outline,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'mfinstalacoes@hotmail.com',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                height: 60,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                                color: isHovered ? Colors.blue : Colors.black87,
                              ),
                            ),
                          ),
                          // Text(
                          //   'Home',
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //     fontFamily: 'Montserrat',
                          //     color: isHovered ? Colors.blue : Colors.black87,
                          //   ),
                          // ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovered,
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.blue,
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
                                color: isHovered ? Colors.blue : Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovered,
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.blue,
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
                                color: isHovered ? Colors.blue : Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovered,
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.blue,
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
                                color: isHovered ? Colors.blue : Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovered,
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      );
                    }),

                    // Text(
                    //   'Contato',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontFamily: 'Montserrat',
                    //   ),
                    // ),
                    SizedBox(
                      width: screenSize.width * 0.03,
                    ),
                    ElevatedButton(
                      child: Text('Entre em Contato'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ContactFormView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0XFF0b70a4),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(
                            fontSize: 15,
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
