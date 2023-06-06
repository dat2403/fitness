import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widgets/round_button.dart';
import 'package:fitness/common_widgets/round_textfield.dart';
import 'package:fitness/views/auth/your_goal_view.dart';
import 'package:flutter/material.dart';

class CompleteProfileView extends StatefulWidget {
  static const String routeName = '/complete-profile';

  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/complete_profile.png",
                  fit: BoxFit.fitWidth,
                  width: media.width,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Text(
                  "Let’s complete your profile",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Container(
                  // margin: margin,
                  decoration: BoxDecoration(
                    color: TColor.lightGray,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          "assets/images/gender.png",
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                          color: TColor.gray,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            items: ["Male", "Female"]
                                .map(
                                  (genderOption) => DropdownMenuItem(
                                    value: genderOption,
                                    child: Text(
                                      genderOption,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: TColor.gray,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                            isExpanded: true,
                            hint: Text(
                              "Choose Gender",
                              style: TextStyle(
                                fontSize: 12,
                                color: TColor.gray,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  textEditingController: txtDate,
                  hintText: "Date of Birth",
                  icon: "assets/images/date.png",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: RoundTextField(
                        // textEditingController: null,
                        hintText: "Your Weight",
                        icon: "assets/images/weight.png",
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: TColor.secondaryG,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "KG",
                        style: TextStyle(
                          fontSize: 12,
                          color: TColor.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: RoundTextField(
                        // textEditingController: null,
                        hintText: "Your Height",
                        icon: "assets/images/height.png",
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: TColor.secondaryG,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "CM",
                        style: TextStyle(
                          fontSize: 12,
                          color: TColor.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.height * 0.07,
                ),
                RoundButton(
                  title: "Next  >",
                  onPress: () {
                    Navigator.pushNamed(context, YourGoalView.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
