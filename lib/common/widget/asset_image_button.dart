import 'package:flutter/material.dart';

class AssetImageButton extends StatelessWidget {
  final String assetPath;
  final double? scale;
  final void Function()? onTap;

  const AssetImageButton(
      {super.key, required this.assetPath, this.scale, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        assetPath,
        scale: scale,
      ),
    );
  }
}
