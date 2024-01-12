import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/Rectangle 910.png'),
        SafeArea(
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
              RichText(text: TextSpan(
                text: "Profession Seeker\n",
                children: [TextSpan(text: "Let’s find your dream job and improve your skill")]
                ))
            ],
          ))
        ]),
    );
  }
}