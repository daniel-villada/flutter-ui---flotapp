import 'package:flot/styles/colors.dart';
import 'package:flot/widgets/balance_total.dart';
import 'package:flot/widgets/credit_card.dart';
import 'package:flot/widgets/custom_app_bar.dart';
import 'package:flot/widgets/transations_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SpaceGrotesk'),
      home: Scaffold(
        backgroundColor: ThemeColors.grayTertiary,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 32),
              BalanceTotal(),
              SizedBox(height: 32),
              CreditCard(),
              SizedBox(height: 32),
              TransationsList()
            ],
          ),
        ),
      ),
    );
  }
}
