import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/assets_const.dart';
import 'package:grocery_app/utils/constants/color.dart';
import 'package:grocery_app/utils/constants/size.dart';

class SiginExtra extends StatelessWidget {
  const SiginExtra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: EAppColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  height: EAppSizes.iconSm,
                  image: AssetImage(EAppAssetsConst.google))),
        ),
        const SizedBox(
          width: EAppSizes.spaceBtItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: EAppColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  height: EAppSizes.iconSm,
                  image: AssetImage(EAppAssetsConst.facebook))),
        )
      ],
    );
  }
}
