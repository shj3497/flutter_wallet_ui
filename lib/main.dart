import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/head.dart';
import 'package:flutter_wallet_ui/total.dart';
import 'package:flutter_wallet_ui/wallets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Head(),
                SizedBox(height: 60),
                TotalBallance(),
                SizedBox(height: 60),
                Wallets()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
