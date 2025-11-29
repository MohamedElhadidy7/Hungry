import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/widgets/Custom_User_Textfield.dart';
import 'package:hungry/shared/Custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  void initState() {
    _name.text = 'Knuckles';
    _email.text = 'Knuckles@gmail.com';
    _address.text = '55Dubai, UAE';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primarycolor,
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.primarycolor,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                        ),
                      ),
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                Gap(30),
                CustomUserTextfield(controller: _name, label: 'Name'),
                Gap(20),
                CustomUserTextfield(controller: _email, label: 'Email'),
                Gap(20),
                CustomUserTextfield(controller: _address, label: 'Address'),
                Gap(20),
                Divider(),
                Gap(20),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 2,
                  ),
                  tileColor: Colors.white,
                  leading: Image.asset(
                    'assets/icons/profileVisa.png',
                    width: 50,
                    height: 60,
                  ),
                  title: CustomText(text: 'Debit card', color: Colors.black),
                  subtitle: CustomText(
                    text: '**** **** 2345',
                    color: Colors.black,
                  ),
                  trailing: CustomText(
                    text: 'Default',
                    color: Colors.black,
                    size: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 80,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //edit button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.primarycolor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      CustomText(text: 'Edit profile', color: Colors.white),
                      Gap(5),
                      Icon(Icons.edit, color: Colors.white),
                    ],
                  ),
                ),
                //logout
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.primarycolor),
                  ),
                  child: Row(
                    children: [
                      CustomText(text: 'LogOut', color: AppColors.primarycolor),
                      Gap(5),
                      Icon(Icons.logout, color: AppColors.primarycolor),
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
