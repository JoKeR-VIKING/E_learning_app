import 'package:e_learning_app/screens/home/widget/active_course.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/screens/home/widget/emoji_text.dart';
import 'package:e_learning_app/screens/home/widget/search_input.dart';
import 'package:e_learning_app/screens/home/widget/featured_course.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const EmojiText(),
              const SearchInput(),
              FeaturedCourse(),
              const ActiveCourse()
            ]
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2
                )
              )
            ),
            child: const Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ),
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Image.asset('assets/icons/calendar.png', width: 20)
        ),
        BottomNavigationBarItem(
          label: 'Bookmark',
          icon: Image.asset('assets/icons/bookmark.png', width: 20)
        ),
        BottomNavigationBarItem(
          label: 'User',
          icon: Image.asset('assets/icons/user.png', width: 20)
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
            'Hello Pratham!',
            style: TextStyle(fontSize: 16, color: kFontLight)
        )
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: kFontLight.withOpacity(0.3),
                      width: 2
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset('assets/icons/notification.png', width: 30),
            ),
            Positioned(
                top: 20,
                right: 25,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    color: kAccent,
                    shape: BoxShape.circle
                  ),
                )
            )
          ],
        )
      ],
    );
  }
}