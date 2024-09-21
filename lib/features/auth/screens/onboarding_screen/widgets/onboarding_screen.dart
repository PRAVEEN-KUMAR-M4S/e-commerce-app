import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';

class OnBoardingScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String img;
  const OnBoardingScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(EAppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              height: EAppHelperFun.screenHeight() * 0.6,
              width: EAppHelperFun.screenWidth() * 0.8,
              image: AssetImage(img)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: EAppSizes.spaceBtItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
