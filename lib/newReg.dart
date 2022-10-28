import 'package:cyberhawk/LoginPage.dart';
import 'package:cyberhawk/bloc/blocfile.dart';
import 'package:cyberhawk/bloc/regbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class NewReg extends StatefulWidget {
  const NewReg({Key? key}) : super(key: key);

  @override
  State<NewReg> createState() => _NewRegState();
}

class _NewRegState extends State<NewReg> {
  var role = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff3A3A4D),
              Color(0xff373749D2),
              Color(0xff27273900),
            ])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "New Registration",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "IBM",
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text("Role"),
                  TextField(
                    controller: role,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Phone"),
                  TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Password"),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: MaterialButton(
                      
                      onPressed: () {
                        
                        
                          BlocProvider.of<SigupBloc>(context).add(
                              GetSignupEvent(
                                  role: role.text,
                                  phone: phone.text,
                                  password: password.text));
                      },
                     child: BlocConsumer<SigupBloc, SignupStates>(
                          listener: (context, state) {
                            if (state is SignupError) {
                              Fluttertoast.showToast(
                                  msg: state.error.toString());
                            }
                           else if (state is LoginSuccess) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            }
                          },
                          builder: (context, state) {
                            if (state is Fetching) {
                              return LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white,
                                size: 30,
                              );
                            } else {
                              return Text(
                                'SUbmit',
                              );
                            }
                          },
                      
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
