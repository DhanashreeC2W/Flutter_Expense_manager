import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override 
  State createState()=>_LoginScreenState();
}
class _LoginScreenState extends State{
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(60),
            alignment: Alignment.center,
            //width: 70,
            //height: 60,
            child: Image.asset("assets/splash_screen_image.png",
            ),
          ),
          Container(
            height: 390,
            width: 280,
            //padding:const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(     
                  alignment: Alignment.centerLeft,
                  //width: 190,
                  height: 24,
                  child: Text("Login to your Account",
                  style: GoogleFonts.poppins(
                    textStyle:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0,0,0,1)
                    ),
                  ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  width: 280,
                  height: 49,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0,0,0,0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                       border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                      hintText: "    Name",
                      hintStyle: TextStyle(
                        color:Color.fromRGBO(0,0,0,0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400, 
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  width: 280,
                  height: 49,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0,0,0,0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                       border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                      hintText: "    Username",
                      hintStyle: TextStyle(
                        color:Color.fromRGBO(0,0,0,0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400, 
                        )
                    ),
                  ),
                ),
                
                const SizedBox(height: 60,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const  HomeScreen())
                       );
                    }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(14,161,125,1)),
                      fixedSize: MaterialStateProperty.all(const Size(280, 49)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),                  
                      ),
                    child: Text("Sign in",
                    style: GoogleFonts.poppins(
                      textStyle:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255,255,255,1),
                      ),
                    ),
                    ),
                    ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 250,),
          Container(
            width: 220,
            height: 20,
            child: Row(
              children: [
                Text("Don't have an account? ",
                style: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>const RegisterScreen())
                    ),
                  child: Text("Sign up",
                  style: GoogleFonts.poppins(
                    textStyle:const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.green            
                       )
                  ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ); 
  }
}