import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPress;
  final bool isLoading;
  final String text;
  final Color? color;
  const AppButton(
      {super.key,
      required this.onPress,
      this.isLoading = false,
      this.text = 'Continue',
      this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: isLoading
              ? const CircleBorder()
              : const RoundedRectangleBorder()),
      child: isLoading
          ? const CupertinoActivityIndicator(
              color: Colors.black,
            )
          : Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
    );
  }
}
