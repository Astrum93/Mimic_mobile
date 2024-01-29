import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/app_colors.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/image/mimic.png',
                  scale: 4,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '이메일 인증으로 안전하게 시작하기',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  color: AppColors.mainColor,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
