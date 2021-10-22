import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mi_card/PAGE4.dart';

import 'package:flash_card/flash_card.dart';
class PAGE2 extends StatelessWidget {
  const PAGE2({Key key}) : super(key: key);



  @override
  // ignore: missing_return
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
    title: Text("ABOUT"),
    foregroundColor: Colors.black87,
      centerTitle: true,

    ),
        body:Column
          (children:[

           Center(
             heightFactor: 1.25,
               child:FlashCard(

                 height: 475,
                   width: 300.0,
                   frontWidget: Container(
                       child: Center
                         (child:Text(
"I Am a Second Year undergraduate at ajay kumar garg engineering college looking forward to enhance my skills in app development through google development student club  ",


                           style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black, )


                       ),
                       ),

                   ),
                   backWidget: Container(

                         child:Image(
                         image: AssetImage("images/2.png"),
                         fit: BoxFit.fill,

                       ),
                   )
               )

            ),





        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PAGE4(),));
        },
        child: Icon(
          Icons.arrow_forward_rounded,
          color: Color(0xff000000),

        ),
      ),
    );

  }
}
