import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SectionCompanyView extends StatelessWidget {
  const SectionCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 120),
          child: SizedBox(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0XFFcc343c),
                      Color.fromARGB(255, 243, 98, 106),
                      Color(0XFF0b70a4),
                      Color.fromARGB(255, 50, 138, 182),
                    ],
                  ),
                  shape: BoxShape.circle),
              child: Align(
                child: Container(
                  height: 390,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/business-concept.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
          )
              .animate(
                delay: 1000.ms,
                onPlay: (controller) => controller.duration,
              )
              .move(duration: Duration(milliseconds: 600), begin: Offset(-350, 0)),
        ),
        // Container(
        //   height: screenSize.height * 0.7,
        //   width: screenSize.width * 0.5,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: SizedBox(
            child: Container(
              height: 400,
              width: 700,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Row(
                      children: [
                        Text(
                          'Quem Somos',
                          style: TextStyle(
                            color: Color(0XFFcc343c),
                            // fontWeight: FontWeight.w100,
                            fontSize: 30,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 120,
                      child: Divider(
                        color: Color.fromARGB(255, 137, 204, 238),
                        thickness: 2,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Desde 1986 Atuamos no mercado com larga experiência em instalações nos seguimentos Industrial e Comercial.\nCom total qualidade e responsabilidade com o cliente. Nossa prioridade é a satisfação do cliente, entregando a obra no prazo determinado,\ncom mão de obra profissional e qualificada, com matéria prima de qualidade e atendimento diferenciado.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 102, 102),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Montserrat',
                      ),
                    )
                        .animate(
                          delay: 1000.ms,
                          onPlay: (controller) => controller.duration,
                        )
                        .move(duration: Duration(milliseconds: 600), begin: Offset(-350, 0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
