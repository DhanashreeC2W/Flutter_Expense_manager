import 'package:expense_manager/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override 
  State createState()=>_SplashScreenState();
}
class _SplashScreenState extends State{
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255,255,255,1),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 300,),
        GestureDetector(
          onTap: () => Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>const RegisterScreen())
            ),
          child: Container(
            width: 144,
            height: 144,
            padding: const EdgeInsets.only(
              //top: 400,
              //left: 108,
              ),
           decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(234,238,235,1)
          ),
          child: Container(
            //width: 69.76,
            //height: 58.82,
           child: Image.asset("assets/splash_screen_image.png",
           width: 69.76,
            height: 58.82,
          ),
          )
          ),
        ),
        const SizedBox(height: 300,),
        Container(
          padding: const EdgeInsets.only(
            //top: 300,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          //height: 24,
          //width: 145,
          child: Text("Expense Manager",
          style: GoogleFonts.poppins(
            textStyle:const TextStyle(
              fontSize:16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0,0,0,1)
            ),
          ),
          ),
        )
      ],
    ),
  ),
    );
  }
}