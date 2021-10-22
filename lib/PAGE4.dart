import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class PAGE4 extends StatefulWidget {
  const PAGE4({Key key}) : super(key: key);

  @override
  _PAGE4State createState() => _PAGE4State();
}

class _PAGE4State extends State<PAGE4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
          "connect with me",
            style: TextStyle(
              fontSize: 30,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),

      ),
          SizedBox(
            height: 30,
          ),


        Card(
        color: Colors.black,
        elevation: 5,
        child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

    GestureDetector(
    onTap: _launchGH,
    child: Tooltip(
    message: 'Github',
    waitDuration: Duration(milliseconds: 500),
    child:Icon(
    FontAwesomeIcons.githubSquare,

    color: Colors.blue[300],
      size: 30.0,
    ),),
    ),

    GestureDetector(
    onTap: _launchIG,
    child: Tooltip(
    message: 'Instagram',
    waitDuration: Duration(milliseconds: 500),
    child:Icon(

    FontAwesomeIcons.instagramSquare,
    color: Colors.blueGrey[300],
      size: 30.0,
    ),
    ),
    ),

    ],
    )
    )
      )

  ]
    ),
      ),
    );
  }
}

_launchIG() async {
  const url = 'https://www.instagram.com/tanmay07trivedi/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchGH() async {
  const url = 'https://github.com/tanmaytrivedi9140';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}