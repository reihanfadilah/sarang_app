import 'package:flutter/material.dart';
import 'package:tinder_app/common_widgets/banner_widget.dart';
import 'package:tinder_app/common_widgets/custom_button_widget.dart';
import 'package:tinder_app/common_widgets/custom_text_button_widget.dart';
import 'package:tinder_app/common_widgets/custom_text_field_widget.dart';
import 'package:tinder_app/common_widgets/hero_widget.dart';
import 'package:tinder_app/common_widgets/logo_and_tagline_widget.dart';
import 'package:tinder_app/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:tinder_app/theme_manager/style_manager.dart';
import 'package:tinder_app/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    nameController.dispose();
    emailController.clear();
    emailController.dispose();
    passwordController.clear();
    passwordController.dispose();
    super.dispose();
  }

  String? ValidationInput(){
    if(nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty){
      return 'Name or email or password can\'t be empty';
    }

    if(nameController.text.length < 4 ||
        emailController.text.length < 4 ||
        passwordController.text.length < 4){
      return 'Too Short, minimum 4 characters';
    }

    if(!emailController.text.contains('@')){
      return  'Email not valid without @';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoAndTaglineWidget(),
              HeroWidget(),
              CustomTextFieldWidget(
                labelName: 'Complete Name',
                hintext: 'Write your name',
                controller: nameController,
              ),
              CustomTextFieldWidget(
                labelName: 'Email Address',
                hintext: 'Write your mail address',
                controller: emailController,
              ),
              CustomTextFieldWidget(
                labelName: 'Password',
                hintext: 'Write your security',
                controller: passwordController,
                isObsecure: true,
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              CustomButtonWidget(
                title: 'Get Started',
                onTap: () {
                  final message = ValidationInput();
                  if(message != null){
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                        content: Text(message),
                        ),
                    );
                  return;
                }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpAgeJobScreen(
                        fullname: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: AppSize.s20,
              ),
              CustomTextButtonWidget(
                  title: 'Sign In to My Account', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
