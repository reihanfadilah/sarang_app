import 'package:tinder_app/features/likes_you/domain/user.dart';
import 'package:tinder_app/theme_manager/asset_image_icon_manager.dart';

List<User> dataUserDummy = [
  User(
    fullName: 'Yunita',
    age: 22,
    occupation: 'Teacher',
    description:
    'improve eceonomy of the world by teaching students how to manage money and invest to the greater good in these luxury.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love1_image.png',
  ),User(
    fullName: 'Rimadona',
    age: 24,
    occupation: 'Doctor',
    description:
    'Helping people life is relly fun for me and I really wanted to cure the wolrd form all of the disease that  we currently have.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love2_image.png',
  ),User(
    fullName: 'Aninda',
    age: 21,
    occupation: 'Enterpreneur',
    description:
    'I want to have big bussiness and create a great impact for the people. finance, health, and many good things in this wolrd.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love3_image.png',
  ),
];