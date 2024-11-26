import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class common_balances extends StatefulWidget {
  const common_balances({super.key});

  @override
  State<common_balances> createState() => _common_balancesState();
}

class _common_balancesState extends State<common_balances> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 16,right: 16),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Common Balances",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Spacer(),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/icons/cross_icon.svg"))
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(child: Text("23 Apr 2024",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.9),fontFamily: "FontPoppins"),)),
                Text("₹ ${"14,000"}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.9),fontFamily: "FontPoppins"))
              ],
            ),
            SizedBox(height: 12,),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ExpansionTile(
                      collapsedIconColor: Colors.white,
                      iconColor: Colors.white,
                      collapsedBackgroundColor: Colors.white10,
                      backgroundColor: Colors.white10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white30, width: 1),
                      ),
                      title: Row(
                        children: [
                          Text("03:30 pm",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: "FontPoppins"
                            ),),
                          SizedBox(width: 10,),
                          Text("Ram",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "FontPoppins"
                            ),),
                          Spacer(),
                          SvgPicture.asset("assets/icons/hotel_icon.svg",height: 20,width: 20,),
                          SizedBox(width: 5,),
                          Text("Hotel",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "FontPoppins"
                            ),),
                          SizedBox(width: 25,),
                          SizedBox(
                            width: 70,
                            child: Text("₹ ${8000}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF15C872),
                                  fontFamily: "FontPoppins"
                              ),),
                          ),
                          //SizedBox(width: 25,),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                          child: Column(
                            children: [
                              Row(children: [
                                Text("Me", style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                  fontFamily: "FontPoppins",)),
                                Spacer(),
                                Text("₹ ${1000} ", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE02020),
                                    fontFamily: "FontPoppins"
                                ),),
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Text("Raj", style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: "FontPoppins"
                                ),),
                                Spacer(),
                                Text("₹ ${1000} ", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE02020),
                                    fontFamily: "FontPoppins"
                                ),),
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Text("Kushang", style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: "FontPoppins"
                                ),),
                                Spacer(),
                                Text("₹ ${1000} ", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE02020),
                                    fontFamily: "FontPoppins"
                                ),),
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Text("Kumar",style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: "FontPoppins"
                                ),),
                                Spacer(),
                                Text("₹ ${1000} ", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE02020),
                                    fontFamily: "FontPoppins"
                                ),),
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Text("Markas", style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: "FontPoppins"
                                ),),
                                Spacer(),
                                Text("₹ ${1000} ", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE02020),
                                    fontFamily: "FontPoppins"
                                ),),
                              ],)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                  }
              ),
            )
          ],),
      ),
    );
  }
}
