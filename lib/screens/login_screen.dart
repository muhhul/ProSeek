import 'package:app_gdsc/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isButtonEnabled() {
    return _usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty;
  }

  String getButtonImage() {
    return isButtonEnabled() ? 'assets/svgs/signInBlue.svg' : 'assets/svgs/signInGrey.svg';
  }

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 129),
                  _buildLogoAndWelcomeText(),
                  const SizedBox(height: 18),
                  _buildTextFieldsAndButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoAndWelcomeText() {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset('assets/svgs/logoBlue.svg', height: 58),
          const SizedBox(height: 23),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Welcome\n",
              style: GoogleFonts.inter(
                fontSize: 30,
                color: const Color.fromARGB(255, 0, 0, 0),
                letterSpacing: -0.24,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: "Let’s get started",
                  style: GoogleFonts.lora(
                    fontSize: 15,
                    color: const Color(0xFF9CA5BF),
                    letterSpacing: -0.24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextFieldsAndButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                // Update nilai controller setiap kali teks berubah
                _usernameController.text = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: (value) {
              setState(() {
                // Update nilai controller setiap kali teks berubah
                _passwordController.text = value;
              });
            },
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 251),
          GestureDetector(
            onTap: isButtonEnabled()
                ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen()),
                    );
                  }
                : null,
            child: SvgPicture.asset(
              getButtonImage(),
              height: 56,
            ),
          ),
        ],
      ),
    );
  }
}
