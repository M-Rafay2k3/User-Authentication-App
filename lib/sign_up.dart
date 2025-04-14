import 'package:app_ui/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

void main(){
  runApp(const Screen2());
}


class Screen2 extends StatelessWidget {
  const Screen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body:
            SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children:[ Image.asset(
                'assets/header_img.png',
                height: 234,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.6,
                  child:
                Container(
                  width: 122,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)
                      ),
                    ),
                    child: Text("SIGN IN",
                      style: GoogleFonts.cambo(
                          color: Color(0xFF2F80ED)
                  ),
                    ),
                  ),
                ),
                )
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User? Get Started Now",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ]
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/google.png',
                    width: 30,
                    height: 40,
                  ),
                  Image.asset('assets/fb.png',
                      height:25,
                      width:25
                  ),
                  Image.asset('assets/twitter_logo.png',
                    height: 27,
                    width: 26,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: 170,
                  color: Color(0xFF828282),
                ),
                Text("OR",
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
                // Add spacing between text and line
                Container(
                  height: 1,
                  width: 170,
                  color: Color(0xFF828282),
                ),
              ],
            ),
            Container(
              width: 356,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("EMAIL ID*")
                ],
              ),
            ),
            Column(
                children: [
                  SizedBox(
                    height: 35,
                    width: 356,
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                  ),
                  SizedBox(
                    height:10 ,
                  ),
                  Container(
                    width: 356,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Password*"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                      alignment: Alignment.centerRight,
                      children:[
                        Container(
                        height: 35,
                        width: 356,
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ),
                        Image.asset("assets/hide_icon.png"),
                      ]
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 366,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                        width: 174,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Screen1()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2F80ED),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1)
                              )
                          ),
                          child: Text('SIGN UP',
                            style: GoogleFonts.cambo(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                        Container(
                          width: 174,
                          height: 44,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.text = password_generate(16);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2F80ED),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)
                                )
                            ),
                            child: Text('GENERATE',
                              style: GoogleFonts.cambo(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child:
                    Text("Terms and Conditions | Privacy Policy"),
                  ),
                ]
            ),
            Image.asset(
              'assets/footer_img.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
  String password_generate(int length){
     String number = "12345";
    String specialChar = "_-/?'";
    String uppercaseLetter = "ABCDEFGHIJKL";
    String lowerCaseLetter = "abcdefghijkl";
    String passwordGenerate =
        number + specialChar + uppercaseLetter + lowerCaseLetter;
    String password = "";
    for (dynamic i = 0; i < length; i++) {
      int random = Random().nextInt(passwordGenerate.length);
      password = password + passwordGenerate [random];
    }
    return password;
  }
}
