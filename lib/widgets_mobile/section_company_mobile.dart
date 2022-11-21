import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SectionCompanyViewMobile extends StatelessWidget {
  const SectionCompanyViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Container(
            // height: screenSize.height * 0.6,
            width: screenSize.width * 0.8,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(
                  height: 20,
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
      ],
    );
  }
}
