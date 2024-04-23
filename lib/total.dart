import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/button.dart';

class TotalBallance extends StatelessWidget {
  const TotalBallance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: TextStyle(
            color: Color(0xFFbfbfbf),
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '\$ 5,194,382',
          style: TextStyle(
              color: Color(0xFFfafafa),
              fontSize: 34,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(
              text: 'Transfer',
              bgColor: Color(0xFFf2b33a),
              fontColor: Color(0xFF181818),
            ),
            Button(
              text: 'Request',
              bgColor: Color(0xFF1f2123),
              fontColor: Color(0xFFededed),
            ),
          ],
        ),
      ],
    );
  }
}
