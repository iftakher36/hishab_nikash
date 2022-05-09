import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/foundation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
 
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child: Text("লগইন করুন :",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
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
