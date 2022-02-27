import 'package:flutter/material.dart';
import 'package:plant_app/models/bottom_menu.dart';
import 'package:plant_app/pages/home.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  PageController _pageController = PageController();
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: child.length,
        controller: _pageController,
        onPageChanged: (value) => setState(() => _selectIndex = value),
        itemBuilder: (itemBuilder, index) {
          return Container(
            child: child[index],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < bottomMenu.length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageController.jumpToPage(i);
                      _selectIndex = i;
                    });
                  },
                  child: Image.asset(
                    bottomMenu[i].imagepath,
                    color: _selectIndex == i
                        ? Colors.green
                        : Colors.grey.withOpacity(1),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

List child = [
  const Homepage(),
  Container(color: Colors.blue),
  Container(color: Colors.teal),
  Container(color: Colors.white),
];
