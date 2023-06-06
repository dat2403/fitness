import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widgets/round_button.dart';
import 'package:fitness/views/auth/welcome_view.dart';
import 'package:flutter/material.dart';

List goalList = [
  {
    "image": "assets/images/goal_1.png",
    "title": "Improve Shape",
    "subTitle":
        "I have a low amount of body fat\nand need / want to build more\nmuscle",
  },
  {
    "image": "assets/images/goal_2.png",
    "title": "Lean & Tone",
    "subTitle":
        "I’m “skinny fat”. look thin but have\nno shape. I want to add learn\nmuscle in the right way",
  },
  {
    "image": "assets/images/goal_3.png",
    "title": "Lose a Fat",
    "subTitle":
        "I have over 20 lbs to lose. I want to\ndrop all this fat and gain muscle\nmass",
  },
];

class YourGoalView extends StatefulWidget {
  static const String routeName = '/your-goal';

  const YourGoalView({Key? key}) : super(key: key);

  @override
  State<YourGoalView> createState() => _YourGoalViewState();
}

class _YourGoalViewState extends State<YourGoalView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: CarouselSlider(
              items: goalList
                  .map(
                    (gObj) => Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: TColor.primaryG,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: media.width * 0.1,
                        horizontal: 25,
                      ),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Column(
                          children: [
                            Image.asset(
                              gObj['image'],
                              width: media.width * 0.5,
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(
                              height: media.width * 0.1,
                            ),
                            Text(
                              gObj['title'],
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              color: TColor.white,
                              width: media.width * 0.15,
                              height: 1.5,
                              margin: EdgeInsets.symmetric(
                                vertical: media.width * 0.03,
                              ),
                            ),
                            Text(
                              gObj['subTitle'],
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 0.69,
                initialPage: 0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: media.width,
            child: Column(
              children: [
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
                const Spacer(),
                SizedBox(
                  height: media.height * 0.07,
                ),
                RoundButton(
                  title: "Confirm",
                  onPress: () {
                    Navigator.pushNamed(context, WelcomeView.routeName);
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
