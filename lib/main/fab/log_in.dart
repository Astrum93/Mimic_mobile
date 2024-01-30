import 'package:flutter/material.dart';
import 'package:mimic_mobile/common/constant/app_colors.dart';
import 'package:mimic_mobile/common/widget/mimic_close_button.dart';
import 'package:mimic_mobile/main/home/join/join_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        backgroundColor: Colors.grey.shade800,
        contentPadding: const EdgeInsets.all(8),
        content: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              /// 닫기 버튼
              const Align(
                alignment: Alignment.topRight,
                child: MimicCloseButton(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    /// 아이디
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '이메일 주소 또는 전화번호',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// 비밀번호
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '비밀번호',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// 로그인 버튼
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            '로그인',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///
                    Row(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.check_circle_outline,
                            color: Colors.grey,
                          ),
                          label: const Text(
                            '로그인 유지',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                '아이디 찾기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                '비밀번호 찾기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 20),

                    /// 멤버쉽 가입 버튼
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => const JoinScreen()));
                      },
                      child: Container(
                        width: 210,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            '미믹 무료 멤버쉽 가입하기',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    /// 다른 계정 로그인 버튼
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '다른 계정으로 로그인하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(backgroundColor: Colors.grey),
                        SizedBox(width: 15),
                        CircleAvatar(backgroundColor: Colors.grey),
                        SizedBox(width: 15),
                        CircleAvatar(backgroundColor: Colors.grey),
                        SizedBox(width: 15),
                        CircleAvatar(backgroundColor: Colors.grey),
                        SizedBox(width: 15),
                        CircleAvatar(backgroundColor: Colors.grey),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
