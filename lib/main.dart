import 'package:flutter/material.dart';
import 'package:tinder_app/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_app/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:tinder_app/features/likes_you/presentation/bloc/explore_people/explore_people_bloc.dart';
import 'package:tinder_app/features/likes_you/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_app/theme_manager/theme_data_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => ExplorePeopleBloc(),
        ),
        BlocProvider(create: (context) => PeopleLovedBloc(),
        ),

      ],
      child: AppScreen(),
    );
  }
}
