import 'package:flutter/material.dart';

import 'details.dart';

class ActualReporting extends StatefulWidget {
  const ActualReporting({Key? key}) : super(key: key);

  @override
  State<ActualReporting> createState() => _ActualReportingState();
}

List<String> Textbr = [
  "Tap to add Images",
  "Tap to add video",
  "Tap to add audio"
];
List<Icon> iconbr = [
  Icon(Icons.photo_album_outlined,color: Colors.orange,),
  Icon(Icons.video_library, color: Colors.orange),
  Icon(Icons.volume_up, color: Colors.orange)
];

class _ActualReportingState extends State<ActualReporting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff171717),
        title: Text("Add Images or Videos"),
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1C1C1C),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 150,
                      width: 320,
                      child: Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 66,
                          ),
                          iconbr[index],
                          SizedBox(
                            height: 14.5,
                          ),
                          Text(Textbr[index]),
                        ],
                      )),
                    ),
                  ],
                );
              }),
          SizedBox(
            height: 46,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Details(),
                  ));
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.black),
            ),
            color: Color(0xffFFB11F),
            height: 48,
            minWidth: 320,
          )
        ],
      ),
    );
  }
}
