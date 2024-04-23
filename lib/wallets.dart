import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/wallet.dart';
import 'package:unicons/unicons.dart';

const List<Map<String, dynamic>> data = [
  {
    "name": 'Euro',
    "expression": 'EUR',
    "payment": '6,428',
    "icon": UniconsLine.euro,
  },
  {
    "name": 'Dollar',
    "expression": 'USD',
    "payment": '55,622',
    "icon": UniconsLine.usd_circle,
  },
  {
    'name': 'Rupee',
    'expression': 'INR',
    'payment': '28,981',
    'icon': UniconsLine.rupee_sign,
  },
  {
    'name': 'Yen',
    'expression': 'YEN',
    'payment': '33,514',
    'icon': UniconsLine.yen,
  }
];

class Wallets extends StatelessWidget {
  const Wallets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Wallets',
              style: TextStyle(
                color: Color.fromRGBO(251, 251, 251, 1),
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'View All',
              style: TextStyle(
                color: Color.fromRGBO(182, 182, 182, 1),
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            for (var i = 0; i < data.length; i++)
              Transform.translate(
                offset: Offset(0, -30 * i.toDouble()),
                child: Wallet(
                  i.isOdd ? CardColor.black : CardColor.white,
                  name: data[i]["name"],
                  expression: data[i]["expression"],
                  payment: data[i]["payment"],
                  icon: data[i]["icon"],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
