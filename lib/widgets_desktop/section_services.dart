import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets_public/inkwell.dart';

class SectionServicesView extends StatelessWidget {
  const SectionServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: screenSize.height * .6,
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
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverBuilder(
                  builder: (isHovered) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Expanded(
                                child: Container(
                                  height: screenSize.height * 0.4,
                                  width: screenSize.width * 0.24,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 27, 66),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.none,
                                      image: AssetImage('assets/images/inst_service.jpg'),
                                      opacity: 0.4,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: screenSize.height * 0.4,
                                  width: screenSize.width * 0.24,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 10),
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              isHovered
                                                  ? SizedBox(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Instalações de redes comerciais e\nindustriais de gases GLP e GN', textAlign: TextAlign.center),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  : Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Instalações'),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                HoverBuilder(
                  builder: (isHovered) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.24,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 27, 66),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage('assets/images/teste_estanq.jpg'),
                                    opacity: 0.6,
                                  ),
                                ),
                              ),
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.24,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 10),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            isHovered
                                                ? SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Teste de estanqueidade em\ntubulação de gás e laudos técnicos', textAlign: TextAlign.center),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                : Text(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 25,
                                                    ),
                                                    'Testes'),
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
                      ),
                    );
                  },
                ),
                HoverBuilder(
                  builder: (isHovered) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.24,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 27, 66),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage('assets/images/service_manut.jpg'),
                                    opacity: 0.6,
                                  ),
                                ),
                              ),
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.24,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 10),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            isHovered
                                                ? SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Manutenção preventiva e corretiva em\nFornos, Fogões Industriais e Caldeiras', textAlign: TextAlign.center),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                : Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25), 'Manutenções'),
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
                      ),
                    );
                  },
                ),
                HoverBuilder(
                  builder: (isHovered) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 27, 66),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage('assets/images/banner3.jpg'),
                                    opacity: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                height: screenSize.height * 0.4,
                                width: screenSize.width * 0.22,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 10),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            isHovered
                                                ? SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(style: TextStyle(color: Colors.white, fontSize: 16), 'Instalação e Manutenção de\nRede Hidráulica', textAlign: TextAlign.center),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                : Text(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 25,
                                                    ),
                                                    'Hidráulica'),
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
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
