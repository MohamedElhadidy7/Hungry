import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/view/login_view.dart';
import 'package:hungry/features/Auth/widgets/Custom_Buttom.dart';
import 'package:hungry/shared/Custom_text.dart';
import 'package:hungry/shared/Custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordlController = TextEditingController();
    final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _FormKey,
          child: Column(
            children: [
              Gap(150),
              SvgPicture.asset(
                'assets/logo/logoo.svg',
                color: AppColors.primarycolor,
              ),
              CustomText(
                text: 'Welcome to our Food App',
                color: AppColors.primarycolor,
              ),
              Gap(80),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.primarycolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(30),
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

                        Gap(30),
                        //SignUp
                        CustomAuthButton(
                          color: AppColors.primarycolor,
                          textcolor: Colors.white,
                          text: 'Sign Up',
                          onTap: () {
                            if (_FormKey.currentState!.validate()) {
                              print('sucsess SignUp');
                            }
                          },
                        ),
                        Gap(20),
                        CustomAuthButton(
                          color: Colors.white,
                          text: 'Go To Login?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginView();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
