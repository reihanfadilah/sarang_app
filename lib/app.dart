
import 'package:flutter/material.dart';
import 'package:tinder_app/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_app/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:tinder_app/features/authentication/presentation/sign_up_screen.dart';
import 'package:tinder_app/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:tinder_app/features/likes_you/presentation/explore_people_screen.dart';
import 'package:tinder_app/features/likes_you/presentation/people_loved_screen.dart';
import 'package:tinder_app/features/likes_you/presentation/people_profile_screen.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_app/theme_manager/theme_data_manager.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserAccountRegister.getUserAccountRegister();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    isUserRegister();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: getApplicationThemeData(),
      debugShowCheckedModeBanner: false,
      home: isRegister ? ExplorePeopleScreen() : const SignUpScreen(),
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpUploadPhotoScreen.routeName: (context) => const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => PeopleLovedScreen(),
        PeopleProfileScreen.routeName: (context) =>PeopleProfileScreen(),
      },
    );
  }
}
