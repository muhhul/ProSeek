import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/Rectangle 910.png'),
        Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 243,
                ),
                SvgPicture.asset('assets/svgs/logo.svg',height: 58),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                  text: "Profession Seeker\n", 
                  style: GoogleFonts.inter(fontSize: 30, color: Color(0xFFFFFFFF), letterSpacing: -0.24, fontWeight: FontWeight.w700),
                  children: [TextSpan(text: "Let’s find your dream job and improve your skill",
                  style: GoogleFonts.lora(fontSize: 12, color: Color(0xFFFFFFFF), letterSpacing: -0.24, fontWeight: FontWeight.normal ))]
                  ))
              ],
            )),
        )
        ]),
    );
  }
}