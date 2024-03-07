import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_flutter/Models/categorymodel.dart';
import 'package:task_flutter/Models/newsfeedmodel.dart';
import 'package:task_flutter/Models/storymodel.dart';
import 'package:task_flutter/Widgets/appbar_button_widget.dart';
import 'package:task_flutter/Widgets/bottom_image.dart';
import 'package:task_flutter/Widgets/bottombuttons.dart';
import 'package:task_flutter/Widgets/dot_widget.dart';
import 'package:task_flutter/Widgets/music_widget.dart';
import 'package:task_flutter/Widgets/story_widget.dart';
import 'package:task_flutter/Widgets/text_widget.dart';
import 'package:task_flutter/themestyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentSelected = listCateogry[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'images/Logo.png',
                scale: 1.6,
              ),
              const Spacer(),
              AppBarButtonsWidget(
                  child: Image.asset(
                'images/add.png',
                scale: 2,
              )),
              const SizedBox(
                width: 10,
              ),
              AppBarButtonsWidget(
                  child: Image.asset(
                'images/search.png',
                scale: 2,
              )),
              const SizedBox(
                width: 10,
              ),
              AppBarButtonsWidget(
                  child: Image.asset(
                'images/Bell.png',
                scale: 1.4,
              )),
              const SizedBox(
                width: 10,
              ),
              AppBarButtonsWidget(
                  child: Image.asset(
                'images/profile.png',
                fit: BoxFit.contain,
              )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(storyModelList.length, (index) {
                    var data = storyModelList[index];
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0).copyWith(
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 84,
                              width: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(data.borderimage)),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 9,
                                                spreadRadius: 5)
                                          ]),
                                      child: Center(
                                        child: Image.asset(data.image),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 20,
                                        width: 60,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        decoration: BoxDecoration(
                                            color: data.optionbgColor,
                                            borderRadius: BorderRadius.circular(4)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(data.icons, scale: 1.4),
                                            TextWidget(
                                              text: data.options,
                                              textColor: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextWidget(
                              text: data.name,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    );
                  })
                    ..insert(
                        0,
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: StoryWidget(
                            frame: 'images/Subtract.png',
                            image: 'images/profile.png',
                            name: 'Your Story',
                          ),
                        ))
                    ..insert(
                        1,
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(right: 1, left: 1),
                          child: SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.grey.withOpacity(0.2),
                              thickness: 2,
                              endIndent: 10,
                            ),
                          ),
                        )),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: listCateogry.map((e) {
                    bool isSelected = currentSelected == e;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelected = e;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isSelected
                                  ? const Color(0xffE7CAA9)
                                  : appbarButtonsColor),
                          child: Center(
                            child: TextWidget(
                                text: e.name.toUpperCase(),
                                fontWeight: FontWeight.bold,
                                fontsize: 12,
                                textColor: isSelected
                                    ? Colors.black
                                    : appbarButtonsIconsColor),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(newsFeedList.length, (index) {
                  var data = newsFeedList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: data.imageListt.length == 1
                          ? MediaQuery.sizeOf(context).height * 0.5  + 40
                          : MediaQuery.sizeOf(context).height * 0.7 + 40 ,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/userframenews.png'))),
                                child: Image.asset(data.profileImage),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: data.name,
                                        textColor: Colors.white,
                                        fontsize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      TextWidget(
                                        text: data.userName,
                                        textColor: appbarButtonsIconsColor,
                                        fontsize: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(data.verificationIcon!)
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidget(
                                        text: data.location,
                                        textColor: Colors.white,
                                        fontsize: 14,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      dotWidget(),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      TextWidget(
                                        text: data.time,
                                        textColor: appbarButtonsIconsColor,
                                        fontsize: 14,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      dotWidget(),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.language,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                    0.2 
                                               
                                      ),
                                      const Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  MusicWidget(music: data.music!)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                            text: data.caption,
                            textColor: Colors.white,
                            fontsize: 17,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: List.generate(data.imageListt.length,
                                (rowindex) {
                              var img = data.imageListt[rowindex];
                              return data.imageListt.length == 1
                                  ? Image.asset(img)
                                  : rowindex == 0
                                      ? Image.asset(img)
                                      : const SizedBox();
                            }),
                          ),
                          Row(
                            children: data.imageListt
                                .skip(1)
                                .map((e) => Expanded(
                                  child: SizedBox(
                                      height: 100,
                                      width: 143,
                                      child: Image.asset(
                                        e,
                                        fit: BoxFit.fill,
                                      )),
                                ))
                                .toList(),
                          ),
                          if (data.imageListt.length > 1)
                            Container(
                              height: 65,
                              width: double.maxFinite,
                              color: const Color(0xff1A1A1A),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidget(
                                        text: 'McLaren P1',
                                        textColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontsize: 16,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.space,
                                    children: [
                                      const TextWidget(
                                        text: '12 Photos, 1 Video',
                                        textColor: Colors.white,
                                        fontsize: 16,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4+ 15,
                                      ),
                                      const Stack(
                                        children: [
                                          BottomImagesWidget(
                                            image: 'images/profile.png',
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            child: BottomImagesWidget(
                                              image: 'images/user2.png',
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(left: 34),
                                              child: BottomImagesWidget(
                                                image: 'images/user2.png',
                                              ),
                                            )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          const SizedBox(
                            height: 5,
                          ),
                          BottomButtonsWidget(
                            like: data.likes,
                            comnts: data.comments,
                            share: data.shares,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Divider(
                            color: Colors.grey,
                            endIndent: 190,
                            indent: 190,
                            thickness: 2,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
