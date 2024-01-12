import 'package:app_gdsc/screens/login_screen.dart';
import 'package:app_gdsc/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background white.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              _logo(),
              const SizedBox(
                height: 208,
              ),
              Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Welcome Job Hunter\n",
                              style: GoogleFonts.inter(
                                  fontSize: 30,
                                  color: const Color(0xFF0766AD),
                                  letterSpacing: -0.24,
                                  fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(
                                    text:
                                        "I’m happy to see you. Let’s explore new job for you.",
                                    style: GoogleFonts.lora(
                                        fontSize: 12,
                                        color: const Color(0xFF29ADB2),
                                        letterSpacing: -0.24,
                                        fontWeight: FontWeight.normal))
                              ])),
                      const SizedBox(
                        height: 287,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/svgs/button1.svg',
                          height: 56,
                        ),
                      )
                    ]),
              )
            ],
          ))
        ],
      ),
    );
  }

  Padding _logo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Row(
        children: [
          SvgPicture.asset('assets/svgs/logoBlue.svg', height: 58),
        ],
      ),
    );
  }
}
