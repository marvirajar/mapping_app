import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/colors.dart';
import '../../Utils/routes_names.dart';
import '../../Widgets/widgets.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_sharp),
              onPressed: () => Navigator.pop(context),
            ),
            iconTheme: const IconThemeData(
              color: textColor,
            ),
          ),
          backgroundColor: bgColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child:
                      Center(child: headingTextPoppinsFont("Sign up", 42.1.sp)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                buttonTextFontBold("Sign up to continue", 10.5),
                SizedBox(
                  height: 20.h,
                ),
                const CustomTextField(
                  icon: Icons.contact_page_outlined,
                  obscureText: false,
                  hintText: "EMAIL",
                  keyboard: TextInputType.emailAddress,
                  text: "Enter your Email",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomTextField(
                  icon: Icons.lock_outlined,
                  obscureText: false,
                  hintText: "CNIC NO",
                  text: "Write your NIC without dashes",
                  keyboard: TextInputType.phone,
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const CustomTextField(
                  icon: Icons.lock_outlined,
                  obscureText: false,
                  hintText: "ROLL NO",
                  text: "Roll No eg 2K23/CSM/76",
                ),
                SizedBox(
                  height: 5.h,
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
              customElevatedButton(context: context, loading: isLoading, onPressed: startLoad, buttonText: "Create Account"),
                SizedBox(
                  height: 10.h,
                ),
                secondaryTextDmSansFont("Already have an account?", 12),
                customTextButton("Login", 14, () {
                  Navigator.pushNamed(context, RouteNames.loginScreen);
                }),
              ],
            ),
          ),
        ));
  }
  startLoad() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      isLoading = false;
      Navigator.pushNamed(context, RouteNames.loginScreen);
    });
}}
