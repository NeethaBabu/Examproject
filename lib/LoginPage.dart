// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/circle.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 10,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(0xff0E0E0E),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Enter your number to proceed',
                                style: TextStyle(
                                  color: Color(0xff959595),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your mobile number',
                            ),
                          ),
                          ElevatedButton(
                            child: Text('Continue'),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff342060),
                                minimumSize: Size.fromHeight(50)),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'By creating an account you agree to\n',
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'our',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: 'Terms and condition',
                                      style: TextStyle(color: Colors.blue)),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
