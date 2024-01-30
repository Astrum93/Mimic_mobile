import 'package:flutter/material.dart';

class CircleAssetImageButton extends StatelessWidget {
  final void Function()? onTap;
  final String assetName;

  const CircleAssetImageButton(
      {super.key, this.onTap, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(assetName),
      ),
    );
  }
}
