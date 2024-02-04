import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/colors.dart';

//Heading Text with custom font family
Widget headingTextPoppinsFont(
  String yourText,
  double fontSize,
) {
  return Text(
    yourText,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: textColor,
      fontSize: fontSize.h,
      fontFamily: 'popinsMedium',
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget secondaryTextDmSansFont(String yourText, double fontSize) {
  return Text(
    yourText,
    style: TextStyle(
        color: textColor, fontSize: fontSize.sp, fontFamily: "dmSans"),
  );
}

Widget buttonTextFontBold(String yourText, double fontSize) {
  return Text(
    yourText,
    style: TextStyle(
        color: textColor, fontSize: fontSize.sp, fontFamily: "popinsBold"),
  );
}

//custom Text Filed
class CustomTextField extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  final String text;
  final TextInputType keyboard;
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
    this.text = "",
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.h, left: 10.w),
          child: buttonTextFontBold(hintText, 12.4),
        ),
        SizedBox(
          width: 300.w,
          child: TextField(
            keyboardType: keyboard,
            obscureText: obscureText,
            obscuringCharacter: "*",
            style: const TextStyle(color: textColor, fontFamily: 'popinsLight'),
            decoration: InputDecoration(
              fillColor: Colors.white.withOpacity(0.2),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.white.withOpacity(0.4))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: buttonColor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.white)),
              enabled: true,
              hintText: text,
              prefixIcon: Icon(icon, color: textColor.withOpacity(0.4)),
              hintStyle: TextStyle(
                  color: textColor.withOpacity(0.4),
                  fontSize: 13.9.sp,
                  fontFamily: "popinsLight"),
            ),
            cursorColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

//custom Button
Widget customButton(String name, void Function()? route) {
  return CupertinoButton(
    onPressed: route,
    child: Container(
      height: 50.h,
      width: 285.w,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(15)),
      child: Center(child: buttonTextFontBold(name, 15.7)),
    ),
  );
} //not in use yet

Widget customTextButton(
    String yourText, double fontSize, void Function()? route) {
  return InkWell(
    onTap: route,
    child: Text(
      yourText,
      style: TextStyle(
          decorationColor: Colors.white,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 1,
          decoration: TextDecoration.underline,
          color: textColor,
          fontSize: fontSize.sp,
          fontFamily: "dmSans"),
    ),
  );
}

Widget customElevatedButton({
  required BuildContext context,
  required bool loading,
  required VoidCallback onPressed,
  required String buttonText,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 38.w, right: 38.w),
    child: SizedBox(
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: buttonColor,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: loading ? null : onPressed,
          child: loading
              ? const CircularProgressIndicator(
                  color: buttonColor,
                )
              : buttonTextFontBold(buttonText, 15.7)),
    ),
  );
}
