import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hey, HyeokJin',
              style: TextStyle(
                color: Color.fromRGBO(251, 251, 251, 1),
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Welcome back',
              style: TextStyle(
                color: Color.fromRGBO(182, 182, 182, 1),
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
