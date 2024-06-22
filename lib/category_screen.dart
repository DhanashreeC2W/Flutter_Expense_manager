import 'package:expense_manager/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget{
  const CategoryScreen({super.key});
  @override 
  State createState()=>_CategoryScreenState();
}
class _CategoryScreenState extends State{

  Future<dynamic> myDialog()async{
    return showDialog(
      context:context , 
       builder: (BuildContext context){
        return AlertDialog(
          

          backgroundColor: const Color.fromRGBO(255,255,255,1),
          title:  Text("Delete Category",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0,0,0,1),
            ),
          ),
          ),
          content: Text("Are you sure you want to delete the selected category?",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle:const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0,0,0,1),
            ),
          ),
          ),
          actions: [
            Container(
              // width: 100,
              // height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.15),
                    blurRadius: 8,
                    offset: Offset(1, 2),
                  )
                ]
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(14,161,125,1),),
                  shadowColor: MaterialStateProperty.all(const Color.fromRGBO(0,0,0,0.15)),
                  fixedSize: MaterialStateProperty.all(const Size(100, 35)),
                  // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: (){},
                child: Text("Delete",
                // textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
              textStyle:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255,255,255,1),
              ),
                        ),
                ),
                
                ),
            ),
             ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(140,128,128,0.2),),
                 shadowColor: MaterialStateProperty.all(const Color.fromRGBO(0,0,0,0.15)),
                 fixedSize: MaterialStateProperty.all(const Size(110, 35)),
                //  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
               ),
               onPressed: (){
                 Navigator.of(context).pop();
               },
               child: Text("Cancel",
               textAlign: TextAlign.center,
               style: GoogleFonts.poppins(
             textStyle:const TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.w500,
               color: Color.fromRGBO(0,0,0,1),
             ),
                       ),
               ),
               
               )
          ],
        );
       }
       );
  }

  void mySheet(){
     showModalBottomSheet(
          context: context, 
          builder: (context){
               return Padding(
                      padding:const  EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 74,
                              height: 97,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(140,128,128,0.2),
                              ),
                              child: const Icon(
                                Icons.image,weight: 2,
                                color: Color.fromRGBO(125,125,125,1),
                                ),
                            ),
                          ),
                          Container(
                            child: Text("Add",
                             style: GoogleFonts.poppins(
                              textStyle:const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0,0,0,1),
                                    )
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text("Image URL",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1,color: const Color.fromRGBO(191,189,189,1)),
                              ),
                              child:const  TextField(
                                decoration: InputDecoration(
                                  hintText: " Enter URL",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  )
                                ),
                              ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text("Category",
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
                                hintText: " Enter category name",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),
                           Padding(
                              padding: const EdgeInsets.all(40),
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
                      ])
                    );
  });

     }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
        title: Text("Categories",
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
      body: GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
          ) , 
          padding: const EdgeInsets.all(20),
          itemCount: 4,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
             mySheet();
            },
           onLongPress: () =>myDialog() ,
            child: Container(
              width: 145,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255,255,255,1),
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.15),
                    offset: Offset(1, 2),
                    blurRadius: 8,
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 43,
                    height: 43,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                       color: Color.fromRGBO(0,174,91,0.7)
                    ),
                    child: Image.asset("assets/medicine.png",
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 24,
                    child: Text("Medicine",
                     style: GoogleFonts.poppins(
                          textStyle:const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(33,33,33,1),
                         )
                       ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: 166,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(67),
              color: const Color.fromRGBO(255,255,255,1),
            ),
            child: FloatingActionButton(
              backgroundColor: const Color.fromRGBO(255,255,255,1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
              onPressed: (){
                mySheet();
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
                      color: Color.fromRGBO(255,255,255,1),
                      weight: 4,
                      ),
                  ),
                  const SizedBox(width: 5,),
                  SizedBox(
                    width: 100,
                    height: 18,
                    child: Text("Add Category",
                     style: GoogleFonts.poppins(
                          textStyle:const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(37,37,37,1),
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