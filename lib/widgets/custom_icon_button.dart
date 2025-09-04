import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  const CustomIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50),
        shape: const CircleBorder(),
        backgroundColor: Color(0xff8B8C9E),
      ),
      child: Icon(iconData, size: 20, color: Colors.white),
    );
  }
}
