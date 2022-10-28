import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import 'package:toggle_switch/toggle_switch.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}
bool isSwitched = true;
bool wifi = true;
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Reporting"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Add Crime Details",style: TextStyle(fontSize: 26),),
                ],
              ),
              SizedBox(height: 23,),
              Container(
                padding: EdgeInsets.only(left: 13.0,bottom: 13 ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff1C1C1C)
                ),
                child:
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Sources",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                      child: TextField(
                        cursorColor: Colors.grey,

                        decoration: InputDecoration(

                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 12,),
              Container(
                padding: EdgeInsets.only(left: 13.0,bottom: 13 ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff1C1C1C)
                ),
                child:
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Link",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                      child: TextField(
                        cursorColor: Colors.grey,

                        decoration: InputDecoration(

                            border: InputBorder.none,

                        ),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 28,),
              Container(
                width: 365,
                height: 115,
                padding: EdgeInsets.only(left: 13.0,bottom: 13 ,right: 13.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff1C1C1C)
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Aware of Species",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        Switcher(
                          value: false,
                          size: SwitcherSize.small,
                          switcherButtonRadius: 20,
                          enabledSwitcherButtonRotate: false,
                          colorOff: Colors.blueGrey.withOpacity(0.3),
                          colorOn: Colors.green,
                          onChanged: (bool state) {
                            //
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Is there any Suspect",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        Switcher(
                          
                          value: false,
                          size: SwitcherSize.small,
                          switcherButtonRadius: 20,
                          enabledSwitcherButtonRotate: false,
                          colorOff: Colors.blueGrey.withOpacity(0.3),
                          colorOn: Colors.green,
                          onChanged: (bool state) {
                            //
                          },
                        ),

                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 28,),
              Container(
                  width: 365,
                  height: 100,
                  padding: EdgeInsets.only(left: 13.0,bottom: 13 ,right: 13.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff1C1C1C)
                  ),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("Comments",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),

                      )
                    ],

                  )
              ),
              SizedBox(height: 30,),
              Container(
                width: 365,
                height: 65,
                padding: EdgeInsets.all(13 ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff1C1C1C)
                ),
                child:
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Is there any Suspect",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        Switcher(
                          value: false,
                          size: SwitcherSize.small,
                          switcherButtonRadius: 20,
                          enabledSwitcherButtonRotate: false,
                          colorOff: Colors.blueGrey.withOpacity(0.3),
                          colorOn: Colors.green,
                          onChanged: (bool state) {
                            //
                          },
                        ),
                      ],
                    ),
                  ],
              )
              ),
              SizedBox(height: 40,),
              MaterialButton(
                onPressed: () {},

                child: Text(
                  "Report",
                  style: TextStyle(color: Colors.black),
                ),
                color: Color(0xffFFB11F),
                height: 48,
                minWidth: 365,
              )
            ],
          ),
        ),
      ),
    );
  }
}
