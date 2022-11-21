import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets_public/inkwell.dart';

class SectionServicesViewMobile extends StatelessWidget {
  const SectionServicesViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/services2.png'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                      ),
                      'Nossos Serviços')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    HoverBuilder(
                      builder: (isHovered) {
                        return Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 27, 66),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/images/inst_service.jpg'),
                                      opacity: 0.4,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Instalações'),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Instalações de redes comerciais e\nindustriais de gases GLP e GN', textAlign: TextAlign.center),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      // begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,

                                      colors: isHovered
                                          ? [Colors.transparent, Color(0XFFcc343c)]
                                          : [
                                              Colors.transparent,
                                              Colors.transparent,
                                            ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    HoverBuilder(
                      builder: (isHovered) {
                        return Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 27, 66),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/images/teste_estanq.jpg'),
                                      opacity: 0.6,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Testes'),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Teste de estanqueidade em\ntubulação de gás e laudos técnicos', textAlign: TextAlign.center),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      // begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,

                                      colors: isHovered
                                          ? [Colors.transparent, Color(0XFFcc343c)]
                                          : [
                                              Colors.transparent,
                                              Colors.transparent,
                                            ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    HoverBuilder(
                      builder: (isHovered) {
                        return Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 27, 66),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/images/service_manut.jpg'),
                                      opacity: 0.6,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Manutenções'),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Manutenção preventiva e corretiva em\nFornos, Fogões Industriais e Caldeiras', textAlign: TextAlign.center),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      // begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,

                                      colors: isHovered
                                          ? [Colors.transparent, Color(0XFFcc343c)]
                                          : [
                                              Colors.transparent,
                                              Colors.transparent,
                                            ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    HoverBuilder(
                      builder: (isHovered) {
                        return Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 27, 66),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('assets/images/banner3.jpg'),
                                      opacity: 0.5,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.92,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Hidráulica'),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Instalação e Manutenção de\nRede Hidráulica', textAlign: TextAlign.center),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      // begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,

                                      colors: isHovered
                                          ? [Colors.transparent, Color(0XFFcc343c)]
                                          : [
                                              Colors.transparent,
                                              Colors.transparent,
                                            ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
