import 'package:expense_manager/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashScreen extends StatefulWidget{
  const TrashScreen({super.key});
  @override 
  State createState()=>_TrashScreenState();
}
class _TrashScreenState extends State{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
        title: Text("Trash",
         style: GoogleFonts.poppins(
             textStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(33,33,33,1)
          ),
        ),
        ),
      ),
      drawer:const  MyMenuScreen(),
       body: ListView.builder(
        itemCount: 10,
        itemBuilder:(context, index){
          return Container(
            width: double.infinity,
           //height: 90,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5,color: Color.fromRGBO(206,206,206,1)),)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.remove_circle,
                          color: Color.fromRGBO(204,210,227,1),
                          ),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Padding(
                               padding: const EdgeInsets.all(0),
                               child: Container(
                                //width: 80,
                                //height: 23,
                                child: Text("Medicine",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0,0,0,1)
                                  ),
                                ),
                                ),
                               ),
                             ),
                          
                          Container(
                            //alignment: Alignment.topLeft,
                            width: 300,
                            //height: 25,
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
                            style: GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0,0,0,0.8),                        )
                            ),
                            ),
                          ),
                          
                          
                        ],
                      ),
                     Padding(
                               padding: const EdgeInsets.all(1),
                               child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 23,
                                child: Text("500",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0,0,0,1)
                                  )
                                ),
                                ),
                               ),
                             ),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                       Container(
                            alignment: Alignment.bottomRight,
                           //width: 81,
                            height: 15,
                            child: Text("3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                              textStyle:const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0,0,0,0.6)
                            )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        } 
        
        ),
    );
   }
}