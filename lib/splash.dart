import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Auth/view/login_view.dart';
import 'package:hungry/root.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  double logoOpacity = 0;
  double imageOpacity = 0;
  Offset logoOffset = const Offset(0, 0.2);

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        logoOpacity = 1;
        logoOffset = Offset.zero;
      });
    });

    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        imageOpacity = 1;
      });
    });

    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(280),

            AnimatedSlide(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeOut,
              offset: logoOffset,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 800),
                opacity: logoOpacity,
                child: SvgPicture.asset('assets/logo/logoo.svg'),
              ),
            ),

            const Spacer(),

            /// Bottom Image Animation
            AnimatedOpacity(
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeIn,
              opacity: imageOpacity,
              child: Image.asset('assets/splash/splash.png'),
            ),
          ],
        ),
      ),
    );
  }
}
