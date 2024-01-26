import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  final Widget child;

  const GreyButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
