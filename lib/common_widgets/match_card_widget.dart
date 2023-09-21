import 'package:flutter/material.dart';
import 'package:tinder_app/common_widgets/glass_card_widget.dart';
import 'package:tinder_app/features/likes_you/domain/user.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_app/theme_manager/color_manager.dart';
import 'package:tinder_app/theme_manager/font_manager.dart';
import 'package:tinder_app/theme_manager/style_manager.dart';
import 'package:tinder_app/theme_manager/values_manager.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget(
      {super.key,
        required this.user
      });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                 user.imagePath,
              ),
            ),
            border: Border.all(
              width: 10.0,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.circular(AppSize.s70),
          ),
        ),
        GlassCardWidget(
          user: user,
        ),
      ],
    );
  }
}
