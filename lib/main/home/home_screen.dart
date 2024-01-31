import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/constant.dart';
import 'package:mimic_mobile/common/widget/mimic_clolor_button.dart';
import 'package:mimic_mobile/main/fab/log_in.dart';
import 'package:mimic_mobile/main/home/axis_screen/vertical_home.dart';
import 'package:mimic_mobile/main/home/menu/home_menu.dart';

import 'axis_screen/horizontal_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset('$basePath/mimic.png'),
        ),
        title: const Text(
          'THIS MONTH',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                /// 로그인 버튼
                MimicColorButton(
                  onTap: () {
                    debugPrint('login');
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return const Login();
                        });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '로그인',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                /// 메뉴 버튼
                MimicColorButton(
                  onTap: () {
                    debugPrint('menu');
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return const HomeMenu();
                        });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const VerticalHome()
              : const HorizontalHome();
        },
      ),
    );
  }
}
