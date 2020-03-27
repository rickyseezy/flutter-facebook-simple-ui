import 'package:facebook_app_ui/models/user.dart';

final story1 = Story('assets/images/image_1.jpg');
final story2 = Story('assets/images/image_2.jpg');
final story3 = Story('assets/images/image_3.jpg');
final story4 = Story('assets/images/image_4.jpg');
final story5 = Story('assets/images/image_5.jpg');
final story6 = Story('assets/images/image_6.jpg');
final story7 = Story('assets/images/image_7.jpg');
final story8 = Story('assets/images/image_8.jpg');
final story9 = Story('assets/images/image_9.jpg');
final story10 = Story('assets/images/image_10.jpg');

final users = [
  User(
      name: 'Anita',
      firstName: 'Michaels',
      avatar: 'assets/images/pp_1.jpg',
      story: story1,
      action: 'updated his cover photo'),
  User(
      name: 'Barack',
      firstName: 'Obama',
      avatar: 'assets/images/pp_2.jpg',
      story: story2,
      action: 'updated his cover photo'),
  User(
      name: 'Jordan',
      firstName: 'Praise',
      avatar: 'assets/images/pp_3.jpeg',
      story: story3,
      action: 'updated his cover photo'),
  User(
      name: 'Marcus',
      firstName: 'Right',
      avatar: 'assets/images/pp_4.jpeg',
      story: story4,
      action: 'updated his cover photo'),
  User(
      name: 'Denzel',
      firstName: 'Bakus',
      avatar: 'assets/images/pp_5.jpg',
      story: story5,
      action: 'updated his cover photo'),
  User(
      name: 'Fazila',
      firstName: 'Rahmeed',
      avatar: 'assets/images/pp_6.jpg',
      story: story6,
      action: 'updated his cover photo'),
  User(
      name: 'Melanie',
      firstName: 'Duchel',
      avatar: 'assets/images/pp_7.jpg',
      story: story7,
      action: 'updated his cover photo'),
  User(
      name: 'Axelle',
      firstName: 'Duknel',
      avatar: 'assets/images/pp_8.jpg',
      story: story8,
      action: 'updated his cover photo'),
  User(
      name: 'Eva',
      firstName: 'Mendes',
      avatar: 'assets/images/pp_9.jpeg',
      story: story9,
      action: 'updated his cover photo'),
  User(
      name: 'Richard',
      firstName: 'Dugraal',
      avatar: 'assets/images/pp_1.jpg',
      story: story10,
      action: 'updated his cover photo'),
];

class Data{
  final List<User> users;

  Data(this.users);
}

final mockData = Data(users);
