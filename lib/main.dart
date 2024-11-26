import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rydyt_expense_v_one/pie_screen.dart';
import 'package:rydyt_expense_v_one/progress_barScreen.dart';

import 'Formfeild_page.dart';
import 'add_members.dart';
import 'common_balances.dart';
import 'expenses.dart';
import 'expensesPieChart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  expensesPieChart(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String amount = "";
  //String formattedAmount = "₹ $amount";
  List<int> selectedcategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 56),
        child: ListView(
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/back_icon.svg",
                height: 24,
                width: 24,),
                SizedBox(width: 10,),
                Text("Sc to Bbsr",
                  style: TextStyle(color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: "FontPoppins"),)
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: Colors.white12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 12),
                  child: Column(children: [
                    SizedBox(
                      height: 25,
                      child: Row(children: [
                        Text("Current Status :30%",
                          style: TextStyle(color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "FontPoppins"),),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1,
                                  color: Colors.white12
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("24C°",
                              style: TextStyle(color: Colors.white.withOpacity(0.7),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "FontPoppins"),),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,
                              color: Colors.white12
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("DAY 1",
                              style: TextStyle(color: Colors.white.withOpacity(0.7),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "FontPoppins"),),
                          ),
                        )
                      ],),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(width: 1,color: Colors.white12),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Avg speed",
                                style: TextStyle(color: Colors.white.withOpacity(0.7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "FontPoppins"),),
                                SizedBox(height: 2,),
                                Text("100 km/hr",
                                  style: TextStyle(color: Colors.white.withOpacity(0.3),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "FontPoppins"),)
                            ],),
                            Spacer(),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Travel time",
                                  style: TextStyle(color: Colors.white.withOpacity(0.7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "FontPoppins"),),
                                SizedBox(height: 2,),
                                Text("02:25:20",
                                  style: TextStyle(color: Colors.white.withOpacity(0.3),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "FontPoppins"),)
                              ],),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Secunderabad",
                          style: TextStyle(color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "FontPoppins"),),
                        Spacer(),
                        Text("Bhubaneshwar",
                          style: TextStyle(color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "FontPoppins"),),
                      ],
                    ),
                  ],
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5,),
                  child: Container(
                    color: Colors.black,
                    width: 75,
                    child: Center(
                      child: Text("Ongoing",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.3),
                            fontFamily: "FontPoppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 15),),
                    ),
                  ),
                )
            ],
            ),
            SizedBox(height: 30,),
            _buildExpenseSummaryContainer(),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 1,color: Colors.white12),
                  borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
                child: Column(
                  children: [
                    Image(image: AssetImage("assets/images/phone_view.png")),
                    SizedBox(height: 20,),
                    Text("Switch over to our Ride mode's simple but smart interface for a immersive experience. Enjoy features like automatic routes optimization, smart dashboard, convenient font and contrast, simplified settings as...",
                        textAlign: TextAlign.center,style: TextStyle(color: Colors.white.withOpacity(0.5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            fontFamily: "FontPoppins")
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color(0xFFEB1D23),Color(0xFF840004)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight
                            ),
                            borderRadius: BorderRadius.circular(27)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16,bottom: 16,),
                          child: Center(
                            child: Text("Get started with Ride mode",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "FontPoppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }

  
  // Widget _buildExpenseSummaryContainer() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white10,
  //       border: Border.all(width: 1, color: Colors.white12),
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all(20),
  //       child: Column(
  //         children: [
  //           Row(
  //             children: [
  //               Text(
  //                 "Ride Expenses",
  //                 style: TextStyle(
  //                   color: Colors.white.withOpacity(0.8),
  //                   fontFamily: "FontPoppins",
  //                   fontWeight: FontWeight.w400,
  //                   fontSize: 15,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 15),
  //           amount.isNotEmpty && selectedcategories.isNotEmpty
  //               ? _buildExpenseDetails()
  //               : _buildEmptyState(),
  //           SizedBox(height: 15),
  //           amount.isNotEmpty && selectedcategories.isNotEmpty
  //           ? _buildAddViewExpenseButton()
  //           : _buildAddExpenseButton(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buildExpenseDetails() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       SvgPicture.asset("assets/icons/wallet_icon.svg"),
  //       SizedBox(width: 15),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             "Total Expenses",
  //             style: TextStyle(
  //               color: Colors.white.withOpacity(0.4),
  //               fontFamily: "FontPoppins",
  //               fontWeight: FontWeight.w400,
  //               fontSize: 15,
  //             ),
  //           ),
  //           Text(
  //             "₹ $amount",
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontFamily: "FontPoppins",
  //               fontWeight: FontWeight.w400,
  //               fontSize: 24,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget _buildEmptyState() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       SvgPicture.asset("assets/icons/wallet_icon.svg"),
  //       SizedBox(width: 15),
  //       SizedBox(
  //         width: 260,
  //         child: Text(
  //           "Record your spendings here, log each expense made!",
  //           style: TextStyle(
  //             color: Colors.white.withOpacity(0.4),
  //             fontFamily: "FontPoppins",
  //             fontWeight: FontWeight.w400,
  //             fontSize: 15,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget _buildAddViewExpenseButton() {
  //   return InkWell(
  //     onTap: () async {
  //       final result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
  //         return expenses();
  //       }));
  //       if (result != null) {
  //         setState(() {
  //           amount = result["Amount"];
  //           selectedcategories = result["Category"];
  //         });
  //       }
  //     },
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: Container(
  //             decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                 colors: [Color(0xFFEB1D23), Color(0xFF840004)],
  //                 begin: Alignment.centerLeft,
  //                 end: Alignment.centerRight,
  //               ),
  //               borderRadius: BorderRadius.circular(27),
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.symmetric(vertical: 16),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   SvgPicture.asset("assets/icons/add_icon.svg", height: 20, width: 20),
  //                   SizedBox(width: 5),
  //                   Text(
  //                     "Add",
  //                     style: TextStyle(
  //                       color: Colors.white,
  //                       fontFamily: "FontPoppins",
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 14,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //         SizedBox(width: 10,),
  //         Expanded(
  //           child: Container(
  //             decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                 colors: [Color(0xFFD9D9D9).withOpacity(0.3), Color(0xFF5B5B5B).withOpacity(0.5)],
  //                 begin: Alignment.centerLeft,
  //                 end: Alignment.centerRight,
  //               ),
  //               borderRadius: BorderRadius.circular(27),
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.only(top: 16,bottom: 16),
  //               child: Center(
  //                 child: Text(
  //                   "View all",
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontFamily: "FontPoppins",
  //                     fontWeight: FontWeight.w400,
  //                     fontSize: 14,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildAddExpenseButton() {
  //   return InkWell(
  //     onTap: () async {
  //       final result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
  //         return expenses();
  //       }));
  //       if (result != null) {
  //         setState(() {
  //           amount = result["Amount"];
  //           selectedcategories = result["Category"];
  //         });
  //       }
  //     },
  //     child: Container(
  //       decoration: BoxDecoration(
  //         gradient: LinearGradient(
  //           colors: [Color(0xFFEB1D23), Color(0xFF840004)],
  //           begin: Alignment.centerLeft,
  //           end: Alignment.centerRight,
  //         ),
  //         borderRadius: BorderRadius.circular(27),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 16),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             SvgPicture.asset("assets/icons/add_icon.svg", height: 20, width: 20),
  //             SizedBox(width: 5),
  //             Text(
  //               "Add Expense",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontFamily: "FontPoppins",
  //                 fontWeight: FontWeight.w400,
  //                 fontSize: 14,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

 Widget _buildExpenseSummaryContainer() {
   return Container(
      decoration: BoxDecoration(
          color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white12
        )
      ),
     child: Padding(
       padding: const EdgeInsets.all(20),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Ride Expenses",
             style: TextStyle(
               color: Colors.white.withOpacity(0.8),
               fontFamily: "FontPoppins",
               fontWeight: FontWeight.w400,
               fontSize: 15,
             ),),
           SizedBox(height: 15,),
           Row(
              mainAxisSize: MainAxisSize.max,
             children: [
               SizedBox(height: 15,),
               amount.isNotEmpty && selectedcategories.isNotEmpty
                   ? _buildTotalExpenses()
                   : _buildExpenses(),
               SizedBox(height: 15,),
               // amount.isNotEmpty && selectedcategories.isNotEmpty
               //     ? _buildTotalExpensesCata()
               //     : _buildExpensesCata()
             ],
           )
         ],
       ),
     ),
      );
 }

 Widget _buildTotalExpenses(){
   final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/icons/wallet_icon.svg"),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Expenses",
                  style: TextStyle(
                     color: Colors.white.withOpacity(0.4),
                     fontFamily: "FontPoppins",
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                   ),),
                Text(" ₹ $amount",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "FontPoppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),)
              ],
            ),
          ],
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: (screenWidth - 84) / 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xFFEB1D23),Color(0xFFEB1D23).withOpacity(0.5)]),
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    width: 1, color: Colors.red.withOpacity(0.4),
                  ),
                ),
                child: InkWell(
                  onTap: () async {
                    final result = await Navigator.push(context, MaterialPageRoute(builder: (context){
                      return expenses();
                    }));
                    if (result != null){
                      setState(() {
                        amount = result["Amount"];
                        selectedcategories = result["Category"];
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/add_icon.svg", height: 20, width: 20),
                        SizedBox(width: 5,),
                        Text("Add",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "FontPoppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ))
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Progressbar();
                  }));
                },
                child: Container(
                  width: (screenWidth - 84) / 2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xFFD9D9D9).withOpacity(0.3),Color(0xFF5B5B5B).withOpacity(0.5)]),
                    borderRadius: BorderRadius.circular(27),
                    border: Border.all(
                      width: 1, color: Colors.white12,
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Text("View all",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "FontPoppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            )),
                      )
                  ),
                ),
              )

            ],
          ),
        )
      ],
    );
 }

 Widget _buildExpenses(){
    return Expanded(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset("assets/icons/wallet_icon.svg"),
              SizedBox(width: 15,),
              SizedBox(
                width: 260,
                child: Text("Record your spendings here, log each expense made !",
                  style: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                  fontFamily: "FontPoppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),),
              )
            ],
          ),
          SizedBox(height: 15,),
          Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFFEB1D23),Color(0xFFEB1D23).withOpacity(0.5)]),
              borderRadius: BorderRadius.circular(27),
              border: Border.all(
                width: 1,
                color: Colors.red.withOpacity(0.4),
              ),
            ),
            child:
            InkWell(
              onTap: () async {
                final result = await Navigator.push(context, MaterialPageRoute(builder: (context){
                  return expenses();
                }));
                if ( result != null ) {
                  setState(() {
                    amount = result["Amount"];
                    selectedcategories = result["Category"];
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset("assets/icons/add_icon.svg", height: 20, width: 20),
                    SizedBox(width: 5,),
                    Text("Add Expense",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "FontPoppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ))
                  ],),
              ),
            ),
          )
         ]
      ),
    );
 }
}
