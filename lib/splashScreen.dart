import 'package:app_ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main (){
  runApp(const SplashScreen());
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/header_img.png'),
          Text("ANGEL SURE",
          style: GoogleFonts.akayaTelivigala(
          fontSize: 38,
          color: Color(0xFF2F80ED),
          ),
          ),
          Image.asset('assets/lady2.png'),
          Container(
            height: 37,
              width: 32,
              child:
          CircularProgressIndicator(),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
          Image.asset('assets/footer_img.png'),

              Padding(
                  padding: EdgeInsets.only(bottom: 20.0, right: 3.0),
              child:
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Screen1(),)
                );
              },
                  style: TextButton.styleFrom(
                    shape: CircleBorder(
                    ),
                  ),
                  child: Icon(Icons.arrow_forward_ios),
              ),
              ),
            ]
          ),
          
        ],
      ),
    );
  }
}
