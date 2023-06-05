import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widgets/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController pageController = PageController();
  int currentPage = 0;
  List pageList = [
    {
      "title": "Track Your Goal",
      "subTitle":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/images/on_1.png",
    },
    {
      "title": "Get Burn",
      "subTitle":
          "Let’s keep burning, to archive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/on_2.png",
    },
    {
      "title": "Eat Well",
      "subTitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/on_3.png",
    },
    {
      "title": "Improve Sleep\nQuality",
      "subTitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/images/on_4.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      currentPage = pageController.page?.round() ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              var pObj = pageList[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj);
            },
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: TColor.primaryColor1,
                    value: (currentPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    color: TColor.primaryColor1,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (currentPage < 3) {
                        // currentPage = currentPage + 1;
                        pageController.animateToPage(
                          currentPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceInOut,
                        );
                        setState(() {
                          currentPage = currentPage + 1;
                        });
                        pageController.jumpToPage(currentPage);
                      } else {
                        print("Open Welcome Screen");
                      }
                    },
                    icon: Icon(
                      Icons.navigate_next,
                      color: TColor.white,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
