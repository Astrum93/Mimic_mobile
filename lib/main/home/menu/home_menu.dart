import 'package:flutter/material.dart';

import '../../../common/constant/app_colors.dart';
import '../home_screen.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      surfaceTintColor: Colors.black,
      child: OrientationBuilder(builder: (context, orientation) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// 미믹 로고
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/image/mimic.png',
                      scale: 4,
                    ),
                  ),

                  /// 닫기 버튼
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
