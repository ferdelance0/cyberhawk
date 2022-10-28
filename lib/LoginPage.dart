import 'dart:ui';
import 'dart:ui';
import 'package:cyberhawk/newReg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:cyberhawk/bloc/blocfile.dart';
import 'package:cyberhawk/crimeReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.jpg"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 52.0),
            child: Column(
              children: [
                SizedBox(
                  height: 52,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      height: 31.11,
                      width: 32.73,
                    ),
                    SizedBox(
                      width: 7.13,
                    ),
                    Image.asset(
                      "assets/textlo.png",
                      width: 114,
                    )
                    // const Text("CYBER HAWK",
                    // style: TextStyle(
                    //   fontSize: 25,
                    //   fontFamily: "IBM",
                    // ),)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "IBM",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xff4B4B6C),
                        ),
                        label: Text("User name",
                            style: TextStyle(
                              fontFamily: "IBM",
                              color: Color(0xff4B4B6C),
                            )),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff4B4B6C),
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontFamily: "IBM",
                            color: Color(0xff4B4B6C),
                          ),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Forgot Password?",
                            style: TextStyle(
                              fontFamily: "IBM",
                              color: Color(0xff4B4B6C),
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 83.5,
                ),
                Column(
                  children: [
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(
                              VerifyPassword(
                                  username: username.text,
                                  password: password.text));
                        },
                        child: BlocConsumer<LoginBloc, LoginStates>(
                          listener: (context, state) {
                            if (state is LoginError) {
                              Fluttertoast.showToast(
                                  msg: state.error.toString());
                            }
                            if (state is LoginSuccess) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CrimeReport()));
                            }
                          },
                          builder: (context, state) {
                            if (state is Loading) {
                              return LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white,
                                size: 30,
                              );
                            } else {
                              return Text(
                                'LOGIN',
                              );
                            }
                          },
                        ),
                        minWidth: MediaQuery.of(context).size.height * 0.5,
                        color: Color(0xffFFB11F),
                      ),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    InkWell(
                      child: Text("Dont have an account? Create Account",
                          style: TextStyle(
                            fontFamily: "IBM",
                            color: Color(0xff4B4B6C),
                          )),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewReg()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
