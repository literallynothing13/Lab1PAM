import 'package:flutter/material.dart';

class Ractbutton extends StatelessWidget {
  final String btnName;
  final VoidCallback onPress;

  const Ractbutton({
    super.key,
    required this.btnName,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 50,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:  Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Text(
                btnName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
