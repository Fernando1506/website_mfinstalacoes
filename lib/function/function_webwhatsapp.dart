import 'package:url_launcher/url_launcher.dart';

openwhatsapp() async {
  var whatsappUrl = "https://api.whatsapp.com/send/?phone=5516991795592&text= Preciso incluir o arquivo no repositório do Github!!!";

  if (await canLaunch('https://api.whatsapp.com/send/?phone=5516991795592&text= Preciso incluir o arquivo no repositório do Github!!!')) {
    await launch('https://api.whatsapp.com/send/?phone=5516991795592&text= Preciso incluir o arquivo no repositório do Github!!!');
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}
