import 'package:flutter/material.dart';

enum CardColor { black, white }

class Wallet extends StatelessWidget {
  final String name; // Euro | Dollar | Rupee
  final String payment; // 6428 | 55622 | 28981
  final String expression; // EUR | USD | INR
  final IconData icon;
  final Color bgColor;
  final Color fontColor;

  const Wallet(
    CardColor cardColor, {
    super.key,
    required this.expression,
    required this.name,
    required this.payment,
    required this.icon,
  })  : bgColor = cardColor == CardColor.black
            ? const Color(0xFF1f2123)
            : const Color(0xFFfafafa),
        fontColor = cardColor == CardColor.black
            ? const Color(0xFFfafafa)
            : const Color(0xFF1f2123);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: fontColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    payment,
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    expression,
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Transform.scale(
            scale: 2,
            child: Transform.translate(
              offset: const Offset(-8, 24),
              child: Icon(
                icon,
                size: 64,
                color: fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
