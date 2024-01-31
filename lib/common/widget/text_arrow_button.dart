import 'package:flutter/material.dart';

class TextArrowButton extends StatelessWidget {
  final String text;
  final Color? color;

  const TextArrowButton({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 250,
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: color,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(
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
    );
  }
}
