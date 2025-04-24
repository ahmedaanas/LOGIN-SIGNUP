// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/app_colors.dart';
import 'package:flutter_application_1/pages/logo_text.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/widget/custom_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Username = TextEditingController();
    TextEditingController Password = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 170),
                  LogoText(),
                  Text(
                    " Welcome back! ",
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " Log in to existing LOGO account",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 50),
                  CustomTextField(
                    haid: false,
                    controller: Username,
                    hint: "Username",
                    icon: Icons.person_2_outlined,
                  ),
                  SizedBox(height: 25),
                  CustomTextField(
                    haid: true,
                    controller: Password,
                    hint: "Password",
                    icon: Icons.lock_outlined,
                  ),
                  SizedBox(height: 7),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    width: 199,
                    height: 53,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 4),
                          color: Colors.black,
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [AppColors.primary, AppColors.secondary],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "LOG IN ",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    "Or sign up using",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff282828),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.logo_facebook,
                        color: Colors.blue,
                        size: 50,
                      ),
                      SizedBox(width: 25),
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/images/googleicon.png"),
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Ionicons.logo_apple,
                        color: Color(0xff283544),
                        size: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 45),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          "Sign Up ",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 100,
          child: SvgPicture.asset("assets/images/box2.svg"),
        ),
        Positioned(
          right: 145,
          child: SvgPicture.asset("assets/images/box1.svg"),
        ),
      ],
    );
  }
}
