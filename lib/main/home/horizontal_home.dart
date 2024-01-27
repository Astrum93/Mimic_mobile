import 'package:flutter/material.dart';

import '../../common/widget/grey_button.dart';

class HorizontalHome extends StatefulWidget {
  const HorizontalHome({super.key});

  @override
  State<HorizontalHome> createState() => _HorizontalHomeState();
}

class _HorizontalHomeState extends State<HorizontalHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
