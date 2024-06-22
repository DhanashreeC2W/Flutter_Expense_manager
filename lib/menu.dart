import 'package:expense_manager/category_screen.dart';
import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/graph_screen.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMenuScreen extends StatefulWidget{
  const MyMenuScreen({super.key});
  @override 
  State createState()=>_MyMenuScreenState();
}
class _MyMenuScreenState extends State{
 // Color myTapcolor = Color.fromRGBO()
  @override  
  Widget build(BuildContext context){
    return Drawer(
      surfaceTintColor: const Color.fromRGBO(255,255,255,1),
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              //padding: EdgeInsets.all(20),
              width: 150,
              height: 24,
              child: Text("Expense Manager",
              style: GoogleFonts.poppins(
                textStyle:const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0,0,0,1),
                )
              ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 150,
              child: Text("Saves all your Transactions",
              style: GoogleFonts.poppins(
                textStyle:const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0,0,0,0.5),
                )
              ),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  Image.asset("assets/Tansaction.png",
                  
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=>const HomeScreen())
                      ),
                    child: SizedBox(
                      width: 100,
                      height: 24,
                      child: Text("Transaction",
                      style: GoogleFonts.poppins(
                        textStyle:const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(14,161,125,1),
                                    )
                                  ),
                      ),
                    ),
                  )
                ],
              ),
            ),
             const SizedBox(height: 10,),
              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const GraphScreen())),
               child: SizedBox(
                width: 184,
                height: 40,
                child: Row(
                  children: [
                    Image.asset("assets/Graphs.png",
                    
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 95,
                      height: 24,
                      child: Text("Graphs",
                      style: GoogleFonts.poppins(
                        textStyle:const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33,33,33,1),
                  )
                ),
                      ),
                    )
                  ],
                ),
                           ),
             ),
             const SizedBox(height: 10,),
             SizedBox(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  Image.asset("assets/Category.png",
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap:() => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=>const CategoryScreen())
                      ),
                    child: SizedBox(
                      width: 95,
                      height: 24,
                      child: Text("Category",
                      style: GoogleFonts.poppins(
                        textStyle:const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33,33,33,1),
                                    )
                                  ),
                      ),
                    ),
                  )
                ],
              ),
            ),
             const SizedBox(height: 10,),
             GestureDetector(
              onTap: () => 
             
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const TrashScreen())),
                  
               child: SizedBox(
                width: 184,
                height: 40,
                child: Row(
                  children: [
                    Image.asset("assets/Trash.png",
                    
                    ),
                    const SizedBox(width: 13,),
                    SizedBox(
                      width: 94,
                      height: 24,
                      child: Text("Trash",
                      style: GoogleFonts.poppins(
                        textStyle:const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33,33,33,1),
                  )
                ),
                      ),
                    )
                  ],
                ),
                           ),
             ),
             const SizedBox(height: 10,),
             SizedBox(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  Image.asset("assets/About_us.png",
                  
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 95,
                    height: 24,
                    child: Text("About us",
                    style: GoogleFonts.poppins(
                      textStyle:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(33,33,33,1),
                )
              ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}