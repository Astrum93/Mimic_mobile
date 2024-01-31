import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/app_colors.dart';
import 'package:mimic_mobile/common/widget/mimic_close_button.dart';

import '../../../common/constant/constant.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      '$basePath/mimic.png',
                      scale: 4,
                    ),
                  ),

                  /// 닫기 버튼
                  const MimicCloseButton(),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '미믹이 바꾸어 나가는 세상',
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.double_arrow_rounded,
                              size: 70,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width - 200,
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
