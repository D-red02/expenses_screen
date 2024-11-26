import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class expenses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => expensesState();

}

class expensesState extends State<expenses> {
  TextEditingController amountController = TextEditingController();
  String amount = "";
  List<int> selectedCategories = [];

  List assetpath = [
    "assets/icons/fuel_icon.svg",
    "assets/icons/food_icon.svg",
    "assets/icons/hotel_icon.svg",
    "assets/icons/grocery_icon.svg",
    "assets/icons/otherRuppe_icon.svg"];

  List text = ["Fuel","Food","Hotel","Grocery","Others"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 56),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context,MaterialPageRoute(builder: (context){
                      return MyHomePage();
                    }));
                  },
                    child: SvgPicture.asset("assets/icons/back_icon.svg")),
                SizedBox(width: 10,),
                Text("Add expenses",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    fontFamily: "FontPoppins"),),
              ],
            ),
            SizedBox(height: 100,),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                height: 75,
                width: 170,
                child: TextField(
                  controller: amountController,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.white.withOpacity(0.5),
                  cursorHeight: 30,
                  cursorWidth: 2,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
                    ),
                    labelText: "Enter the amount",
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "FontPoppins"),
                    //hintText: "Enter the amount",
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      fontFamily: "FontPoppins"),
                  keyboardType: TextInputType.number,
                  onChanged: (value){
                    setState(() {
                      amount = value;
                    });
                  },
                ),
              ),
              ]
            ),
            Spacer(),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Category",style: TextStyle(color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: "FontPoppins"),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: assetpath.length,
                          itemBuilder: (context,index){
                        return cata(assetpath[index], text[index],index);
                      }),
                    ),
                  ],
                ),
              ),
            ),
            //Spacer(),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                if(selectedCategories.isNotEmpty && amount.isNotEmpty){
                  Navigator.pop(context,{
                    "Amount" : amount,
                    "Category" : selectedCategories,
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please select one category and enter Amount",
                        style: TextStyle(
                            color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "FontPoppins")),
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: Colors.white12,),
                      borderRadius: BorderRadius.circular(15),
                    ),backgroundColor: Colors.black54,
                    duration: Duration(seconds: 2),
                    )
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xFFEB1D23),Color(0xFF840004)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                    ),
                    borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    width: 1,color: Colors.red.withOpacity(0.4)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/add_icon.svg",height: 20,width: 20,),
                      SizedBox(width: 5,),
                      Text("Add Expense",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "FontPoppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 14))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }


  Widget cata(String assetpath, String text,index){
    final isSelected = selectedCategories.contains(index);
    return GestureDetector(
      onTap: (){
        setState(() {
          if(isSelected){
            selectedCategories.remove(index);
          } else {
            selectedCategories.add(index);
          }
        });
      },
    child: Container(
         child: Padding(
           padding: const EdgeInsets.only(right: 10),
           child: Column(crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
             decoration: BoxDecoration(
             gradient: isSelected ?
             LinearGradient(
               colors: [Color(0xFFEB1D23),Color(0xFF840004)],
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight)
             : null,
        color: isSelected ? null : Colors.black,
        borderRadius: BorderRadius.circular(10),
           ),
                 child: Padding(
                   padding: const EdgeInsets.all(20),
                   child: SvgPicture.asset(assetpath),
                 ),
               ),
               SizedBox(height: 5,),
               Text(text,style: TextStyle(color: Colors.white,
                   fontSize: 15,
                   fontWeight: FontWeight.w400,
                   fontFamily: "FontPoppins"))
             ],
           ),
         ) ,

    ),
    );

  }

}