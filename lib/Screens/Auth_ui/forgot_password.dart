import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/colors.dart';
import '../../Utils/routes_names.dart';
import '../../Widgets/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  padding: EdgeInsets.only(top: 50.h),
                  child: Center(
                      child:
                          headingTextPoppinsFont("Forgot Password", 42.1.sp)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                buttonTextFontBold("Don't remember your password", 10.5),
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
                  height: 20.h,
                ),
                customElevatedButton(
                    context: context,
                    loading: isLoading,
                    onPressed: startLoad,
                    buttonText: "Send Mail"),
                SizedBox(
                  height: 10.h,
                ),
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
  }
}
