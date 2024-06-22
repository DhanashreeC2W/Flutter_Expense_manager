import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override 
  State createState()=>_HomeScreenState();
}
class _HomeScreenState extends State{

  void ShowSheet(){
     showModalBottomSheet(
                  context: context, 
                  builder: (context){
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text("Date",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(33,33,33,1)
                                  ),
                                ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color: const Color.fromRGBO(191,189,189,1)),
                              ),
                              child:const  TextField(
                                decoration: InputDecoration(
                                  hintText: " Enter Date",
                                ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text("Amount",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(33,33,33,1)
                                  ),
                                ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color: const Color.fromRGBO(191,189,189,1)),
                              ),
                              child:const  TextField(
                                decoration: InputDecoration(
                                  hintText: " Enter Amount",
                                ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text(" Catergory",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(33,33,33,1)
                                  ),
                                ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color: const Color.fromRGBO(191,189,189,1)),
                              ),
                              child:const  TextField(
                                decoration: InputDecoration(
                                  hintText: " Enter Category",
                                ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text("Description",
                                style: GoogleFonts.poppins(
                                  textStyle:const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(33,33,33,1)
                                  ),
                                ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color: const Color.fromRGBO(191,189,189,1)),
                              ),
                              child:const  TextField(
                                decoration: InputDecoration(
                                  hintText: " Enter Description",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                              
                                decoration:  BoxDecoration(
                                     borderRadius: BorderRadius.circular(67),
                                  color: const Color.fromRGBO(14,161,125,1),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(1,2),
                                      blurRadius: 4,
                                      color: Color.fromRGBO(0,0,0,0.2),
                                    )
                                  ]
                                ),
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                   style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(14,161,125,1)),
                                  fixedSize: MaterialStateProperty.all(const Size(123, 40)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(67))),                  
                                                    ),
                                  child: Text("Add",
                                   style: GoogleFonts.poppins(
                                      textStyle:const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255,255,255,1),
                                      ),
                                    ),
                                  )
                                  ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  );
  }
  @override  
  Widget build(BuildContext context){
    return  Scaffold(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          //backgroundColor: const Color.fromRGBO(255,255,255,1),
          title: Text("June 2022",
          style: GoogleFonts.poppins(
            textStyle:const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(33,33,33,1),
            ),
          ),
          ),
          actions: [Container(
            alignment: Alignment.center,
           // width: 3,
            //height: 3,
            child: const Icon(Icons.search_outlined,weight: 2,),
          ),  
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder:(context, index){
            return Container(
              width: double.infinity,
              height: 65,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 43,
                      height: 43,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0,174,91,0.7)
                      ),
                      child: Image.asset("assets/medicine.png",
                      
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(3),
                           child: Container(
                            //width: 70,
                            height: 23,
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
                         const SizedBox(width:150 ,),
                        // const Spacer(flex: 10,),
                         GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              width: 15,
                              height: 15,
                              child: const Icon(Icons.remove_circle,color: Color.fromRGBO(246,113,49,1),),
                            ),
                          ),
                         ),
                         const SizedBox(width: 30,),
                         Padding(
                           padding: const EdgeInsets.all(2),
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
                      Container(
                        alignment: Alignment.topLeft,
                        width: 300,
                        height: 18,
                        child: Text("Lorem Ipsum is simply dummy text of the",
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
                 
                ],
              ),
            );
          } 
          
          ),
          floatingActionButton: 
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: 166,
              height: 46,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(67)),
                color: Color.fromRGBO(255,255,255,1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ]
              ),
              child: FloatingActionButton(
                backgroundColor: const Color.fromRGBO(255,255,255,1),
                onPressed: (){
                 ShowSheet();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(14,161,125,1),
                      ),
                      child: const Icon(
                        Icons.add,
                        weight: 4,
                        color: Color.fromRGBO(255,255,255,1),
                        ),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                     // width: 99,
                      height: 18,
                      child: Text("Add Transaction",
                      style: GoogleFonts.poppins(
                        textStyle:const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      ),
                    )
                  ],
                ),
                ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
    );
  }
}