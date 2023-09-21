import 'package:flutter/material.dart';
import 'package:tinder_app/common_widgets/custom_text_field_widget.dart';
import 'package:tinder_app/common_widgets/hero_widget.dart';
import 'package:tinder_app/common_widgets/logo_and_tagline_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoAndTaglineWidget(),
        HeroWidget(),
        CustomTextFieldWidget(
          labelName: 'Complete Name',
          hintext: 'Write your name',
          controller: TextEditingController(),
        ),
        CustomTextFieldWidget(
          labelName: 'Email Address',
          hintext: 'Write your mail address',
          controller: TextEditingController(),
        ),
        CustomTextFieldWidget(
          labelName: 'Password',
          hintext: 'Write your security',
          controller: TextEditingController(),
          isObsecure: true,
        ),
      ],
    );
  }
}
