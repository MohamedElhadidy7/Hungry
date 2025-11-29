import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/view/signup_view.dart';
import 'package:hungry/features/Auth/widgets/Custom_Buttom.dart';
import 'package:hungry/root.dart';
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
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gap(150),
                SvgPicture.asset(
                  'assets/logo/logoo.svg',
                  color: AppColors.primarycolor,
                ),
                Gap(10),
                CustomText(
                  text: 'Welcome Back, Discover The Fast Food!',
                  color: AppColors.primarycolor,

                  fontWeight: FontWeight.w500,
                  size: 13,
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
                    child: Column(
                      children: [
                        Gap(30),
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
                          color: Colors.transparent,
                          textcolor: Colors.white,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              print('sucsess login');
                            }
                          },
                        ),
                        Gap(15),
                        CustomAuthButton(
                          text: 'Create Account ?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) {
                                  return SignupView();
                                },
                              ),
                            );
                          },
                        ),
                        Gap(10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) {
                                  return Root();
                                },
                              ),
                            );
                          },
                          child: CustomText(
                            text: 'Continue as a guest ?',
                            color: Colors.white,
                            size: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
