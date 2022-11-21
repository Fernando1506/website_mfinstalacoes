import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets_desktop/footer.dart';
import '../widgets_desktop/header.dart';
import '../widgets_desktop/section_contacts.dart';

class ContactFormView extends StatelessWidget {
  const ContactFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderView(),
          Container(
            height: 300,
            color: Colors.red[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text('Retornar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0XFF0b70a4),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        textStyle: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 3.5,
            child: SectionContactsView(),
          ),
          FooterView(),
        ],
      ),
    ));
  }
}
