import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../widgets_desktop/section_company.dart';
import '../widgets_mobile/carousel_mobile.dart';
import '../widgets_mobile/footer_mobile.dart';
import '../widgets_mobile/section_contacts_mobile.dart';
import '../widgets_mobile/section_services_mobile.dart';
import '../widgets_public/inkwell.dart';
import '../widgets_mobile/section_company_mobile.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 40),
          child: SizedBox(height: 60, child: Image.asset('assets/images/logo.png')),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0XFF0b70a4)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Color(0XFF0b70a4),
            //   ),
            //   child: Text('Drawer Header'),
            // ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sobre Nós'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const SectionCompanyView()),
                );
              },
            ),
            ListTile(
              title: const Text('Serviços'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Projetos'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const SectionContactsMobileView()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ----------------------------------- COROUSEL BANNER --------------------------------------------------------
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: screenSize.height * 0.3,
                  color: Colors.transparent,
                  child: DestinationCarouselMobile(),
                ),
              ),
            ),

            // // ----------------------------------- SECTION COMPANY -------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: SectionCompanyViewMobile(),
            ),

            // // ----------------------------------- SECTION SERVICES ------------------------------------------------------
            ClipPath(
              clipper: OvalTopBorderClipper(),
              child: SectionServicesViewMobile(),
            ),

            // // ----------------------------------- SECTION PROJECTS ------------------------------------------------------
            // AspectRatio(
            //   aspectRatio: 16 / 8,
            //   child: SectionProjectsView(),
            // ),

            // // -----------------------------------  SECTION CONTACTS --------------------------------------------------------
            SectionContactsMobileView(),

            // // -----------------------------------  FOOTER --------------------------------------------------------
            FooterMbileView(),
          ],
        ),
      ),
    );
  }
}
