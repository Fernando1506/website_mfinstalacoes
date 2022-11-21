import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets_public/inkwell.dart';

class FooterMbileView extends StatelessWidget {
  const FooterMbileView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: screenSize.height * 0.1,
          // width: screenSize.width * 0.92,
          color: Color.fromARGB(255, 194, 190, 190),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '© MF Instalações. Todos os direitos reservados.\nDesenvolvido por Fernando Reis 16 99119-5769',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Color.fromARGB(255, 19, 19, 19)),
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
