import 'package:flot/styles/colors.dart';
import 'package:flutter/material.dart';

class TransationsList extends StatelessWidget {
  const TransationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: ThemeColors.grayQuaternary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transations',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      TransationItem(
                        icon: Icons.coffee,
                        transationName: 'Starbucks Coffee',
                        dateOfTransation: 'Febrary 22, 12:00',
                        totalTransation: 44.08,
                        transationType: 'Expense',
                        transationTypeColor: ThemeColors.statusError,
                      ),
                      SizedBox(height: 12),
                      TransationItem(
                        icon: Icons.home,
                        transationName: 'Rental Payment',
                        dateOfTransation: 'Febrary 19, 3:00',
                        totalTransation: 600,
                        transationType: 'Expense',
                        transationTypeColor: ThemeColors.statusError,
                      ),
                      SizedBox(height: 12),
                      TransationItem(
                        icon: Icons.payments,
                        transationName: 'Week Salary',
                        dateOfTransation: 'Febrary 19, 3:00',
                        totalTransation: 800,
                        transationType: 'Income',
                        transationTypeColor: ThemeColors.brandPressed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransationItem extends StatelessWidget {
  final IconData icon;
  final String transationName;
  final String dateOfTransation;
  final double totalTransation;
  final String transationType;
  final Color transationTypeColor;
  const TransationItem({
    super.key,
    required this.icon,
    required this.transationName,
    required this.dateOfTransation,
    required this.totalTransation, required this.transationType, required this.transationTypeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ThemeColors.graySecondary),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, size: 36),
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transationName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  dateOfTransation,
                  style: TextStyle(color: ThemeColors.graySecondary),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '\$${totalTransation.toString()}',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: transationTypeColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  transationType,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
