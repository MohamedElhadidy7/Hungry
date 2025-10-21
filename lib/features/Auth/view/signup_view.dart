import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/widgets/Custom_Buttom.dart';
import 'package:hungry/shared/Custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordlController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();
    final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: _FormKey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset('assets/logo/logoo.svg'),
                Gap(60),
                CustomTextfield(
                  hint: 'Name',
                  ispassword: false,
                  controller: nameController,
                ),
                Gap(15),
                CustomTextfield(
                  hint: 'Email Addess',
                  ispassword: false,
                  controller: emailController,
                ),
                Gap(15),
                CustomTextfield(
                  hint: 'Password',
                  ispassword: true,
                  controller: passwordlController,
                ),
                Gap(15),
                CustomTextfield(
                  hint: 'Confirm Password',
                  ispassword: true,
                  controller: confirmPassController,
                ),
                Gap(30),
                CustomAuthButton(
                  text: 'Sign Up',
                  onTap: () {
                    if (_FormKey.currentState!.validate()) {
                      print('sucsess SignUp');
                    }
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
