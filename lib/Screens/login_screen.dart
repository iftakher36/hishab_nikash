import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as bx;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
 
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: ListView(
              children:  [
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 20),
                  child: Text("লগইন করুন :",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 20, right: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 70,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "নাম :"),
                      ),
                    ),
                    decoration: bx.BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        bx.BoxShadow(
                          offset: Offset(-5, 5),
                          blurRadius: 2,
                          color: Colors.white,
                          inset: true,
                        ),
                        bx.BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color: Colors.blueGrey,
                          inset: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 20, right: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 70,
                    child:  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            labelText: "পাসওয়ার্ড :"),
                        obscureText: true,
                      ),
                    ),
                    decoration: bx.BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        bx.BoxShadow(
                          offset: Offset(-5, 5),
                          blurRadius: 2,
                          color: Colors.white,
                          inset: true,
                        ),
                        bx.BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color: Colors.blueGrey/*Color(0xFFA7A9AF)*/,
                          inset: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Material(
                        elevation: 3,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              width: 150,
                              child: const Center(child: Text("লগইন",style: TextStyle(color: Colors.white),)),
                              decoration: const BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
          Material(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Container(
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      children:  [
                        const Padding(
                          padding: EdgeInsets.only(top: kIsWeb?55:40),
                          child: Text(
                            "হিসাব ঘর-- মসজিদ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                            height: 2,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset("assets/mosque.svg",height: 300,fit: BoxFit.fitWidth,semanticsLabel: "Hagia Sophia Mosque",)),
            ],
          )
        ],
      ),
    );
  }
}
