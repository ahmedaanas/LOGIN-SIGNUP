import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/logo_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends  StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed( 
      Duration(seconds: 3),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),))
      );
    super.initState();
    
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 130),
                LogoText(),
                SizedBox(height: 30),
                Container(
                  width: 500,
                  height: 400,

                  child: Image.asset("assets/images/logo.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 40),
                Text(
                  "LOREN IPSUM ",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 44, right: 44, top: 18),
                  child: Text(
                    "Lorem Ipsum is a dummy  text \n      used   as placeholder",
                    maxLines: 2,
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      //letterSpacing: 2,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 71,
          child: SvgPicture.asset("assets/images/line.svg", height: 333),
        ),
        Positioned(
          top: 330,
          left: 44.64,
          child: SvgPicture.asset("assets/images/lamp.svg", height: 33.24),
        ),
        Positioned(
          left: 129,
          child: SvgPicture.asset('assets/images/line.svg'),
          height: 315,
        ),
        Positioned(
          top: 315,
          left: 102,
          child: SvgPicture.asset("assets/images/lamp.svg", height: 33.24),
        ),
      ],
    );
  }
}
