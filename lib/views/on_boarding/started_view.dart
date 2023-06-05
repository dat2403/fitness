import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widgets/round_button.dart';
import 'package:fitness/views/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  static const String routeName = '/started-view';

  const StartedView({Key? key}) : super(key: key);

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: isChangeColor
              ? LinearGradient(
                  colors: TColor.primaryG,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Fitness",
              style: TextStyle(
                color: TColor.black,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Everybody Can Train",
              style: TextStyle(
                color: TColor.gray,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: RoundButton(
                  type: isChangeColor
                      ? RoundButtonType.textGradient
                      : RoundButtonType.bgGradient,
                  title: "Get Started",
                  onPress: () {
                    if (isChangeColor) {
                      Navigator.pushReplacementNamed(
                          context, OnBoardingView.routeName);
                    } else {
                      setState(() {
                        isChangeColor = true;
                      });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
