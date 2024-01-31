import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/app_colors.dart';
import 'package:mimic_mobile/common/widget/mimic_close_button.dart';
import 'package:mimic_mobile/common/widget/text_arrow_button.dart';

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
          child: SingleChildScrollView(
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

                /// 본문
                Row(
                  children: [
                    Column(
                      children: [
                        TextArrowButton(
                            text: '미믹이 바꾸어 나가는 세상', color: AppColors.mainColor),
                        TextArrowButton(text: '더욱 재밌고 다양한 콘텐츠'),
                        TextArrowButton(text: '혼자도 좋아 같이 하면 더 좋아'),
                        TextArrowButton(text: '내 주변 미믹 플레이스'),
                      ],
                    ),
                    SizedBox(width: 50),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Download\nMimic App',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Image.asset('$baseUrl/'),
                          // Image.asset('$baseUrl/'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
