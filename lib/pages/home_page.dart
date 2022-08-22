import 'package:flutter/material.dart';
import 'package:pdpui6/animations/FadeAnimation.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png',),
            fit: BoxFit.cover,
          )
        ),
        child: Container(padding: EdgeInsets.only(left: 30,right: 30,top: 130,bottom: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.2)
              ]
            )
          ),
         child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               children: [
                 FadeAnimation(1,
                   Text('Find the best parties near you.',style: TextStyle(color: Colors.yellow.withOpacity(1),fontWeight: FontWeight.w400,fontSize: 40,),),
                 ),
                 SizedBox(height: 20,),
                 FadeAnimation(1,
                  Text('Let us find you a tutorial for your interest',style: TextStyle(color: Colors.green.withOpacity(1),fontWeight: FontWeight.w500,fontSize: 25),),
                 ),
               ]
             ),

               isLogin ?
             Container(
               height: 45,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.yellow[900],),
               child: Center(
                 child: Text('Start',style: TextStyle(color: Colors.white,fontSize: 17),),
               ),
             )
             :
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.red,),
                    child: Center(
                      child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.blue,),
                    child: Center(
                      child: Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                  ),
                )
              ],
            )
           ],
         ),
        ),
      ),
    );
  }
}
