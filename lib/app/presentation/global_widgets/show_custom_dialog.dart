import 'package:flutter/material.dart';

void showCustomDialog(
  BuildContext context,
  String title,
  String description,
  String content,
  String imageUrl,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Column(
          children: [
            Text(description),
            const SizedBox(height: 10),
            Text(content),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl),
            ),
          ],
        ),
      );
    },
  );
}
