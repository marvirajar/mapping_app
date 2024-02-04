import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapping_app/Constants/colors.dart';
import 'package:mapping_app/Utils/routes_names.dart';
import 'package:mapping_app/Widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: bgColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child:
                      Center(child: headingTextPoppinsFont("Login", 42.1.sp)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                buttonTextFontBold("Sign in to continue", 10.5),
                SizedBox(
                  height: 50.h,
                ),
                const CustomTextField(
                  icon: Icons.contact_page_outlined,
                  obscureText: false,
                  hintText: "ROLL NO",
                  text: "Roll No eg 2K23/CSM/76",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomTextField(
                  icon: Icons.lock_outlined,
                  obscureText: true,
                  hintText: "PASSWORD",
                  text: "Enter your Password",
                ),
                SizedBox(
                  height: 20.h,
                ),
                customElevatedButton(
                    context: context,
                    loading: loading,
                    onPressed: startLoad,
                    buttonText: "Login"),
                SizedBox(
                  height: 10.h,
                ),
                customTextButton("Forgot Password?", 14, () {
                  Navigator.pushNamed(context, RouteNames.forgotPasswordScreen);
                }),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 150.w, // Adjust the width as needed
                      height: 1.4.h, // Adjust the height as needed
                      color: textColor.withOpacity(0.5),
                    ),
                    secondaryTextDmSansFont("Or", 15),
                    Container(
                      width: 150.w, // Adjust the width as needed
                      height: 1.4.h, // Adjust the height as needed
                      color: textColor.withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                secondaryTextDmSansFont("Don't have an account?", 12),
                customTextButton("Create account", 14, () {
                  Navigator.pushNamed(context, RouteNames.signUpScreen);
                }),
              ],
            ),
          ),
        ));
  }

  startLoad() async {
    setState(() {
      loading = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      loading = false;
      Navigator.pushNamed(context, RouteNames.signUpScreen);
    });
  }
}
