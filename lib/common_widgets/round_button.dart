import 'package:fitness/common/color_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final RoundButtonType type;

  const RoundButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.type = RoundButtonType.textGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: TColor.primaryG,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: type == RoundButtonType.bgGradient
            ? const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        height: 50,
        textColor: TColor.primaryColor1,
        elevation: type == RoundButtonType.bgGradient ? 0 : 1,
        color: type == RoundButtonType.bgGradient
            ? Colors.transparent
            : TColor.white,
        minWidth: double.maxFinite,
        // child: Ink(
        //   width: double.maxFinite,
        //   height: 50,
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(colors: TColor.primaryG, begin: Alignment.centerLeft, end: Alignment.centerRight,),
        //     borderRadius: const BorderRadius.all(Radius.circular(25.0),),
        //
        //   ),
        // )
        child: type == RoundButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: TColor.primaryG,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(
                    Rect.fromLTRB(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ),
                  );
                },
                child: Text(
                  title,
                  style: TextStyle(
                    color: TColor.primaryColor1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }
}
