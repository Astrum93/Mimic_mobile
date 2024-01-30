import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class MimicColorButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;

  const MimicColorButton({
    super.key,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
      ),
    );
  }
}
