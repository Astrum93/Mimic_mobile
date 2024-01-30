import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class MimicCloseButton extends StatelessWidget {
  const MimicCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.close,
        color: AppColors.mainColor,
      ),
    );
  }
}
