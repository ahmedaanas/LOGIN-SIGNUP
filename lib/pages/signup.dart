import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/app_colors.dart';
import 'package:flutter_application_1/widget/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController Username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController Password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              SizedBox(height: 118),
              Text(
                "Let’s Get Started!",
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Create an account on MNZL to get all features",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff515151),
                ),
              ),
              SizedBox(height: 30),
              CustomTextField(
                controller: firstname,
                hint: "First Name",
                icon: Icons.person_2_outlined,
                haid: false,
              ),
              SizedBox(height: 28),
              CustomTextField(
                controller: lastname,
                hint: "Last Name",
                icon: Icons.person_2_outlined,
                haid: false,
              ),
              SizedBox(height: 28),
              CustomTextField(
                controller: Username,
                hint: "User Name",
                icon: Icons.person_2_outlined,
                haid: false,
              ),
              SizedBox(height: 28),
              CustomTextField(
                controller: email,
                hint: "Email",
                icon: Icons.email_outlined,
                haid: false,
              ),
              SizedBox(height: 28),
              CustomTextField(
                controller: Password,
                hint: "Password",
                icon: Icons.lock_outline,
                haid: true,
              ),
              SizedBox(height: 28),
              CustomTextField(
                controller: confirmpassword,
                hint: "Confirm Password",
                icon: Icons.lock_outline,
                haid: true,
              ),
              SizedBox(height: 33,),
              Container(
                      width: 199,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [AppColors.primary, AppColors.secondary],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "CREATE ",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 48,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),),

                      GestureDetector(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),))
                        },
                        child: Text(" Login here",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ), ),
                      )
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
