import 'package:flutter/material.dart';

class MyEmoji extends StatelessWidget {
  final String emoticonFace;
  const MyEmoji({
    super.key,
    required this.emoticonFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(18),
      child: Text(
        emoticonFace,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
