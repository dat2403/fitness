import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widgets/round_button.dart';
import 'package:fitness/common_widgets/round_textfield.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  static const String routeName = '/signup-view';

  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController firstNameController = TextEditingController();
  bool showPassword = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                const RoundTextField(
                  hintText: "First name",
                  icon: "assets/images/user_text.png",
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                const RoundTextField(
                  hintText: "Last Name",
                  icon: "assets/images/user_text.png",
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                const RoundTextField(
                  hintText: "Email",
                  icon: "assets/images/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                RoundTextField(
                  hintText: "Password",
                  icon: "assets/images/lock.png",
                  obscureText: showPassword,
                  rightIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: Container(
                      width: 15,
                      height: 15,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/show_password.png",
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      icon: Icon(
                        isChecked
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.gray,
                        size: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Expanded(
                        child: Text(
                          "By continuing you accept ou Privacy Policy and\nTerm of Use",
                          style: TextStyle(
                            fontSize: 10,
                            color: TColor.gray,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.15,
                ),
                RoundButton(title: "Register", onPress: () {}),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.gray.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      " Or ",
                      style: TextStyle(
                        fontSize: 16,
                        color: TColor.gray,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.gray.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.gray.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.gray.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/facebook.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: TColor.black,
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: TColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
