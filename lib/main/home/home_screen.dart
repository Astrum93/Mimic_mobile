import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/app_colors.dart';

import '../../common/widget/grey_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset('assets/image/mimic.png'),
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
                GestureDetector(
                  onTap: () {
                    debugPrint('login');
                    debugPrint(MediaQuery.of(context).size.width.toString());
                    debugPrint(MediaQuery.of(context).size.height.toString());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '로그인',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    debugPrint('menu');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const GreyButton(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const GreyButton(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const GreyButton(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GreyButton(
                            child: Image.asset(
                              'assets/image/m.png',
                              scale: 4,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const GreyButton(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GreyButton(
                            child: Image.asset(
                              'assets/image/m.png',
                              scale: 4,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const GreyButton(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GreyButton(
                            child: Image.asset(
                              'assets/image/m.png',
                              scale: 4,
                            ),
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 400,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/image/sing2.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -30,
                  top: 200,
                  child: Image.asset(
                    'assets/image/mimic_beam.png',
                    scale: 5,
                  ),
                ),
                Positioned(
                  right: -30,
                  top: 200,
                  child: Image.asset(
                    'assets/image/mimic_beam2.png',
                    scale: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
