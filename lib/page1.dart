
import 'PAGE2.dart';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class PAGE1 extends StatefulWidget {
@override
_PAGE1State  createState() => _PAGE1State();
}
class _PAGE1State extends State<PAGE1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(40.0),

                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/my.jpg"),

                      maxRadius: 80.0,
                    )
                ),

                Text(
                  " TANMAY TRIVEDI",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '【=◈︿◈=】',
                  style: TextStyle(
                    color: Colors.white70,
                    letterSpacing: 2.5,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),

                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "+91 6394393401",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                 Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "tanmaytrivedi57@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),


  Expanded(child:     SizedBox(
    width: 250.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30.0,
        fontFamily: 'Agne',
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText('Discipline is the best tool'),
          TypewriterAnimatedText('Design first, then code'),
          TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
          TypewriterAnimatedText('Do not test bugs out, design them out'),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  ),),




              ],



            ),

          )
      ,
floatingActionButton: FloatingActionButton(
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> PAGE2(),));
  },
  child: Icon(
    Icons.arrow_forward_outlined,
    color: Color(0xff000000),

),
),

       
    );
  }
}
