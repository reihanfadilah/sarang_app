import 'package:flutter/material.dart';
import 'package:tinder_app/common_widgets/match_button_widget.dart';
import 'package:tinder_app/features/likes_you/domain/user.dart';
import 'package:tinder_app/features/likes_you/presentation/explore_people_screen.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_app/theme_manager/font_manager.dart';
import 'package:tinder_app/theme_manager/style_manager.dart';
import 'package:tinder_app/theme_manager/values_manager.dart';


class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 420.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '${user.imagePath}',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppPadding.p40,
              horizontal: AppPadding.p26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MatchButtonWidget(
                  dimension: 20.0,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  iconPath: 'icon_arrow_left.png',
                ),
                Text(
                  'Lover Profile\nDetails',
                  style: getWhiteTextStyle(
                    fontWeight: FontWeightManager.semibold,
                    fontSize: FontSizeManager.f20,
                  ),
                ),
                MatchButtonWidget(
                  dimension: 20.0,
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context,
                        ExplorePeopleScreen.routeName,
                            (route) => false,
                    );
                  },
                  iconPath: 'icon_close_circle.png',
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
