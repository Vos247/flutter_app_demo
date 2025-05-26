import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/app_background.dart';
import 'package:flutter_app_demo/screens/component/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/home/menu_dropdown.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) {
          return AppBackground(
          child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF00AA77), Color(0xFF007C91)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border(
                bottom: BorderSide(color: Colors.white, width: 60),
              ),
            ),
          ),
          title: const Text(
            'My home',
            style: AppTextStyles.heading,
          ),
          actions: [
            BorderedIconButton(icon: Icons.refresh, onPressed: () {}),
            BorderedIconButton(icon: Icons.notifications_none, onPressed: () {},),
            BorderedIconButton(icon: Icons.add, onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: const Color(0xFF00AA77)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF92AA00), Color(0xFFFFA726)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Favourite',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'The device has not been assigned a room',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  MenuDropdown(
                    onSelected: (value){
                      if(value == 'add'){
                        print('add Device selected');
                      } else if(value == 'edit'){
                        print('Manage Rooms selected');
                      }
                    }
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Frame-3.png',
                          height: 53,
                          width: 108,
                        ), // Replace with actual asset
                        const SizedBox(height: 25),
                        Row(
                          children: const [
                            Icon(Icons.circle, color: Colors.red, size: 10),
                            SizedBox(width: 4),
                            Text(
                              'Stopping',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                                fontSize: 7,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'xx kiet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    letterSpacing: 0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'GPSA - 56789',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.more_vert, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00AA77), Color(0xFF007C91)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Group-1.png',
                  height: 24,
                  width: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Group-2.png',
                  height: 24,
                  width: 24,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: 'contact',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'user'),
            ],
          ),
        ),
      ),
        );
        }
    )
    );
  }
}
