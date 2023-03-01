import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoji;

  const EmoticonFace({
    super.key,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[500],
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoji,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
