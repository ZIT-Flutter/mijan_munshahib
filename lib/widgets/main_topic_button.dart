import 'package:flutter/material.dart';

class MainTopicButton extends StatelessWidget {
  final String title;
  VoidCallback? onTap;

  MainTopicButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: const BoxDecoration(color: Colors.blueGrey),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
