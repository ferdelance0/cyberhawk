import 'package:cyberhawk/ActualReporting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class GridVue extends StatefulWidget {
  const GridVue({Key? key}) : super(key: key);

  @override
  State<GridVue> createState() => _GridVueState();
}
List<String> images = [
  "assets/tusk.png",
  "assets/hunter.png",
  "assets/bird.png"
];
List<String> texts = [
  "Illegal wildlife product trade",
  "Hunting / poaching",
  "Wild Pet Trade"
];
class _GridVueState extends State<GridVue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
       appBar: AppBar(title: Text("Online Reporting",style: TextStyle(fontWeight: FontWeight.w100),),elevation: 0,backgroundColor: Colors.transparent,),
        body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(" Select a Crime Type",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
                ],
              ),
              SizedBox(height: 27,),
              Container(
                clipBehavior: Clip.none,
               child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 28.0,
                ),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) => const ActualReporting(),
                          ));;
                        },
                        child: Container(
                          decoration: BoxDecoration(image: DecorationImage(image:AssetImage(images[index]),fit: BoxFit.fill),borderRadius: BorderRadius.circular(18)),
                          height: 150,
                          width: 150,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          SizedBox(height: 10,),
                          Text(texts[index],softWrap: true,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ],
                  );
                }),
    ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff101010),
    elevation: 0,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: '',

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_outline_rounded),
    label: '',
    ),
    ],
    selectedItemColor: Colors.white70,
    ),
    );
  }
}
