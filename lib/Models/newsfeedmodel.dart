// import 'package:task_flutter/Models/newsfeedmodel.dart';

class NewsFeedModel {
  final String name;
  final String userName;
  final String profileImage;
  final String location;
  final String time;
  final String? verificationIcon;
  final String? music;
  final String caption;
  final List<String> imageListt;
  final int likes;
  final int comments;
  final int shares;

  NewsFeedModel(
    this.imageListt,  {
    required this.name,
    required this.location,
    required this.userName,
    required this.profileImage,
    required this.likes,
    required this.caption,
    required this.comments,
    required this.music,
    required this.shares,
    required this.time,
    required this.verificationIcon,
  });
}

List<NewsFeedModel> newsFeedList = [
  NewsFeedModel(['images/post.png'],
      name: 'Kindel Jim',
      userName: '@kendel123',
      location: 'London , Uk',
      profileImage: 'images/user2.png',
      likes: 356,
      caption: 'Happy Weekend \u2764!',
      comments: 25,
      music: 'Bad - lair Dragons',
      shares: 15,
      time: '1 min ago',
      verificationIcon: 'images/verifyicon.png'), 
      NewsFeedModel(['images/post1.png', 
      'images/post2.png', 
      'images/post3.png', 
      'images/postvideo.png'],
      name: 'Kindel Jim',
      userName: '@kendel123',
      location: 'London , Uk',
      profileImage: 'images/user2.png',
      likes: 356,
      caption: 'Happy Weekend \u2764!',
      comments: 25,
      music: 'Bad - lair Dragons',
      shares: 15,
      time: '1 min ago',
      verificationIcon: 'images/verifyicon.png')
];
