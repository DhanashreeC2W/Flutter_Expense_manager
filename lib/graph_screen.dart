import 'package:expense_manager/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget{
  const GraphScreen({super.key});
  @override 
  State createState()=>_GraphScreenState();
}
class _GraphScreenState extends State{
  
 Map<String,double>data = {
  "Food":650.00,
  "Fuel":600.00,
  "Medicine":500.00,
  "Entertainment":475.00,
  "Shopping":325.00,
 };
 List <Color>colorsName = const[
  Color.fromRGBO(214,3,3,0.7),
  Color.fromRGBO(0,148,255,0.7),
  Color.fromRGBO(0,174,91,0.7),
  Color.fromRGBO(100,62,255,0.7),
  Color.fromRGBO(241,38,196,0.7),
 ];
     @override  
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const MyMenuScreen(),
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
        title: Text("Graph",
         style: GoogleFonts.poppins(
             textStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(33,33,33,1)
          ),
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: [
        
              Container(
                height: 270,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color:Color.fromRGBO(0,0,0,0.5),width: 0.2 ))
                ),
                child: PieChart(
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false,
                  ),
                  colorList: colorsName,
                  chartType: ChartType.ring,
                  dataMap:data, 
                  chartRadius: 200,
                 // ringStrokeWidth: 100,
                centerWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total",
                     style: GoogleFonts.poppins(
               textStyle:const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0,0,0,1)
            ),
          ),
                    ),
                    Text("₹2550.00",
                     style: GoogleFonts.poppins(
               textStyle:const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0,0,0,1)
            ),
          ),
                    ),
        
                  ],
                ),
                 
                  ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,index){
                  return Container(
                    decoration: const BoxDecoration(

                    ),
                    height: 70,
                    width: double.infinity,
                    child: Row(
                      children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(214,3,3,0.7),
                                shape: BoxShape.circle,
                              ),
                                child: Image.asset("assets/medicine.png")
                            ),
                            const SizedBox(width: 10,),
                              Container(
                             // height: 40,
                              width: 100,
                              child: Text("Food",
                               style: GoogleFonts.poppins(
                                textStyle:const TextStyle(
                                 fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                 color: Color.fromRGBO(0,0,0,1)
                                 ),
                                  ),
                              ),
                            ),
                            const Spacer(),
                               Container(
                              //width: 64,
                             // height: 23,
                              child: Row(
                                children: [
                                  Text("₹ ",
                                   style: GoogleFonts.poppins(
                                     textStyle:const TextStyle(
                                    fontSize: 15,
                                   fontWeight: FontWeight.w600,
                                   color: Color.fromRGBO(33,33,33,1)
                                   ),
                                   ),
                                  ),
                                  Text("650.00",
                                   style: GoogleFonts.poppins(
                                     textStyle:const TextStyle(
                                    fontSize: 15,
                                   fontWeight: FontWeight.w400,
                                   color: Color.fromRGBO(33,33,33,1)
                                   ),
                                   ),
                                  ),
                                ],
                              ),
                            )
                          
                      ],
                    ),
                  );
                }
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 100,
                  //margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(top: BorderSide(color:Color.fromRGBO(0,0,0,0.5),width: 0.2 ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total",
                       style: GoogleFonts.poppins(
                      textStyle:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                       color: Color.fromRGBO(0,0,0,1)
                       ),
                        ),
                      ),
                      const Spacer(),
                       Text("₹2550.00",
                       style: GoogleFonts.poppins(
                      textStyle:const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                       color: Color.fromRGBO(0,0,0,1)
                       ),
                        ),
                      ),
                    ],
                  ),
                )

        ])
     
  )
    );
  }
}