import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/widgets/Custom_Buttom.dart';
import 'package:hungry/shared/Custom_text.dart';
import 'package:hungry/shared/Custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailcontrller = TextEditingController();
    TextEditingController _Passwordcontrller = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primarycolor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset('assets/logo/logoo.svg'),
                  Gap(10),
                  CustomText(
                    text: 'Welcome Back, Discover The Fast Food!',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    size: 13,
                  ),
                  Gap(60),
                  CustomTextfield(
                    hint: 'Email Address',
                    ispassword: false,
                    controller: _emailcontrller,
                  ),
                  Gap(20),
                  CustomTextfield(
                    hint: 'Password',
                    ispassword: true,
                    controller: _Passwordcontrller,
                  ),
                  Gap(30),
                  CustomAuthButton(
                    text: 'Login',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('sucsess login');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
