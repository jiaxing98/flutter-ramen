import 'package:flutter/material.dart';
import 'package:flutter_ramen/resources/colors.dart';
import 'package:flutter_ramen/resources/images.dart';
import 'package:flutter_ramen/resources/text_styles.dart';
import 'package:lb_flutter_utilities/app/service_collection.dart';

class RamenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final bool hasBack;

  const RamenAppBar({
    super.key,
    required this.title,
    this.hasBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: preferredSize.width,
      height: preferredSize.height,
      child: Column(
        children: [
          Container(
            height: services.screen.statusBarHeight,
            color: colorAppBar,
          ),
          Container(
            height: 80.0,
            width: preferredSize.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagesBackgroundAppBar),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (hasBack)
                  Positioned(
                    left: 0.0,
                    child: TextButton(
                      onPressed: services.navigation.goBack,
                      child: Image.asset(imagesIconBack),
                    ),
                  ),
                SizedBox(
                  width: services.screen.screenWidth * 3.5 / 5,
                  child: Text(
                    title,
                    style: tsBold700.copyWith(
                        fontSize: 24.0, color: colorTextAppBarTitle),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, services.screen.statusBarHeight + 80.0);
}
