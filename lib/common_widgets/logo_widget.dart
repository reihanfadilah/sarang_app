import 'package:flutter/material.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.0,
      height: 34,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${AssetImageIconManager.assetPath}/logo_image.png',
          ),
        ),
      ),
    );
  }
}
