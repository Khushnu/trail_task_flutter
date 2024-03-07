import 'dart:ui';

class StoryModel{
final String name; 
final String image; 
final String borderimage; 
final String icons; 
final String options; 
final Color optionbgColor; 



StoryModel( {required this.name, required this.image,
 required this.borderimage,
  required this.icons, required this.options, required this.optionbgColor, });

}


List<StoryModel> storyModelList = [
StoryModel(name: 'CountryHenry', 
image: 'images/user.png',
 borderimage: 'images/pinkframe.png',
  icons: 'images/music.png',
  options: 'Live', 
  optionbgColor: const Color(0xff9747FF)
  ),
StoryModel(name: 'CountryHenry', 
image: 'images/user.png',
 borderimage: 'images/gradframe.png',
  icons: 'images/live.png',
  options: 'Live', 
  optionbgColor: const Color(0xff0083E9)),
StoryModel(name: 'Jhon_Wick', 
image: 'images/user2.png',
 borderimage: 'images/redframe.png',
  icons: 'images/wave.png',
  options: 'Live', 
  optionbgColor: const Color(0xffF62222))

]; 