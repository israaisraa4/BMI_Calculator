import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPress;
  const CustomIconButton({
    super.key,
    required this.iconData,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50),
        shape: const CircleBorder(),
        backgroundColor: Color(0xff8B8C9E),
      ),
      child: Icon(iconData, size: 20, color: Colors.white),
    );
  }
}