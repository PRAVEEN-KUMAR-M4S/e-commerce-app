import 'package:flutter/material.dart';
import 'package:grocery_app/common/styles/spacing_style.dart';
import 'package:grocery_app/utils/constants/assets_const.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';

class SuccessScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onpressed;
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EAppSpacingStyle.paddingWithAppbar * 2,
            child: Column(
              children: [
                Image(
                  image: AssetImage(image),
                  width: EAppHelperFun.screenWidth() * 0.6,
                ),
                const SizedBox(
                  height: EAppSizes.spaceBtSections,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: EAppSizes.spaceBtItems,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: EAppSizes.spaceBtSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onpressed, child: const Text("Continue")),
                )
              ],
            )),
      ),
    );
  }
}
