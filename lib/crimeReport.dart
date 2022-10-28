import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'GridViue.dart';

class CrimeReport extends StatefulWidget {
  const CrimeReport({Key? key}) : super(key: key);

  @override
  State<CrimeReport> createState() => _CrimeReportState();
}

class _CrimeReportState extends State<CrimeReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: .9,
        backgroundColor: Colors.transparent.withOpacity(.5),

        child:  BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(

              decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.1)
              ),

          child: ListView(
            children: [
              DrawerHeader(
              padding: const EdgeInsets.only(left: 22.76,top: 0),
              decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    Image.asset("assets/logo.png",height: 31.1,width: 31.1,),
                    const SizedBox(width: 7.13,),
                    Image.asset("assets/textlo.png",height: 37,width: 114,)
                  ],
                ),
              ),
              ListTile(
                  onTap: (){},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/userp.png",height: 22,width: 22,),
                       const SizedBox(width: 13,),
                       const Text('Profile ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),
              ListTile(
                onTap: (){Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => const CrimeReport(),
                ));},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/mapidentify.png",height: 22,width: 22,),
                      const SizedBox(width: 13,),
                      const Text('Identification ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),
              ListTile(
                  onTap: (){},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/tools.png",height: 22,width: 22,),
                      const SizedBox(width: 13,),
                      const Text('Settings ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),
              ListTile(
                  onTap: (){},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/information.png",height: 22,width: 22,),
                      const SizedBox(width: 13,),
                      const Text('About us ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),
              ListTile(
                  onTap: (){},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/email4.png",height: 22,width: 22,),
                      const SizedBox(width: 13,),
                      const Text('Contact us ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),
              ListTile(
                  onTap: (){},
                  title: Row(
                    children: [
                      const SizedBox(width: 27,),
                      Image.asset("assets/logout2.png",height: 22,width: 22,),
                      const SizedBox(width: 13,),
                      const Text('Log out  ',style: TextStyle(fontSize: 16,),),
                    ],
                  )
              ),

            ],
          ),)
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/textlo.png",
              width: 114,
            ),
            MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {showSimpleNotification(
                  Text("offline sync is not working"),
                  position: NotificationPosition.bottom,
                  background: Color(0xff13131D));},
              color: const Color(0xff3A3A4D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.sync,
                    size: 15.58,
                    color: Color(0xffFFBA00),
                  ),
                  Text(
                    " Offline sync",
                    style: TextStyle(fontSize: 10, color: Color(0xffFFBA00)),
                  ),
                ],
              ),
            )
          ],
        ),
        backgroundColor: const Color(0xff3A3A4D),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff3A3A4D),
              Color(0xff13131D),

            ])),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const SizedBox(height: 38),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "We handle your \nReporting.",
                      style: TextStyle(fontSize: 34, fontFamily: "IBM"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              MaterialButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => const GridVue(),
                ));},
                color: const Color(0xffFFB11F),
                child: const Text(
                  "REPORT CRIME",
                  style: TextStyle(color: Color(0xff3A3A4D)),
                ),
                minWidth: 345,
                height: 48,
              ),
              const SizedBox(height: 44),
              Row(children: const [
                Text(
                  "Recommended",
                  style: TextStyle(fontSize: 16, fontFamily: "IBM"),
                )
              ]),
              const SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  const SizedBox(),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3A3A4D),
                                Color(0xff373749D2),
                                Color(0xff27273900),
                              ])),
                      height: 133,
                      width: 111,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/report.png",
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text("Reports",
                              style: TextStyle(fontSize: 12, fontFamily: "IBM"))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff3A3A4D),
                              Color(0xff373749D2),
                              Color(0xff27273900),
                            ])),
                    height: 133,
                    width: 111,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/smartphone.png",
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const Text("Digital Guide",
                            style: TextStyle(fontSize: 12, fontFamily: "IBM"))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3A3A4D),
                                Color(0xff373749D2),
                                Color(0xff27273900),
                              ])),
                      height: 133,
                      width: 111,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/data-analytics.png",
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text("My Analytics",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "IBM",
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 14,),
              Row(
                children: const [
                  Text(
                    "Recent Reports",
                    style: TextStyle(fontFamily: "IBM", fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/img_2.png",
                                height: 56,
                                width: 56,
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: const Color(0xff5EBC74)),
                                    child: const Text(
                                      " Online Reporting ",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "IBM"),
                                      maxLines: 2,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: const Text(" Instagram ",
                                          style: TextStyle(
                                              fontSize: 10, fontFamily: "IBM")),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff848484)),
                                          borderRadius:
                                              BorderRadius.circular(5)))
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                              ),
                              const Text(
                                "Lorem Ipsum is simply dummy text of the prin…",
                                style:
                                    TextStyle(fontSize: 12, fontFamily: "IBM"),
                              ),
                              const Text(
                                  "https://in.images.search.yahoo.com/yhs/search",
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: "IBM"))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff13131D),
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
