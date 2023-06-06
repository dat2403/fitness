import 'package:fitness/common/color_extension.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  static const String routeName = '/welcome';

  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/welcome.png",
                width: media.width * 0.75,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              Text(
                "What is your goal ?",
                style: TextStyle(
                  color: TColor.gray,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "It will help us to choose a best\nprogram for you",
                style: TextStyle(
                  color: TColor.gray,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
