import 'package:flutter/material.dart';

class CustomEntrieSelector extends StatelessWidget {
  const CustomEntrieSelector({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.black87,
          child: Column(
            children: [
              Image.asset('assets/img/placeholder.png'),
              const SizedBox(height: 15),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
