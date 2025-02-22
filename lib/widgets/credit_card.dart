import 'package:flot/styles/colors.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Cards',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Text(
                    'New Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _CardContainer(
                  icon: Icons.account_balance_wallet,
                  bgColor: ThemeColors.brandDefault,
                  cardNumber: 4568,
                  cardType: 'Credit Card',
                ),
                SizedBox(width: 16),
                _CardContainer(
                  icon: Icons.account_balance_wallet,
                  bgColor: ThemeColors.statusError,
                  cardNumber: 4568,
                  cardType: 'Debit Card',
                ),
                SizedBox(width: 16),
                _CardContainer(
                  icon: Icons.account_balance_wallet,
                  bgColor: ThemeColors.statusWarning,
                  cardNumber: 4568,
                  cardType: 'Credit Card',
                ),
              ],
            ),
          ),
          // Todo: Necesito hacer que esto sea un scroll horizontal
        ],
      ),
    );
  }
}

class _CardContainer extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final int cardNumber;
  final String cardType;
  const _CardContainer({
    required this.icon,
    required this.bgColor,
    required this.cardNumber,
    required this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(icon, size: 36)],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardType,
                        style: TextStyle(
                          fontSize: 18,
                          color: ThemeColors.grayPrimary,
                        ),
                      ),
                      Text(
                        'X X X X${cardNumber.toString()}',
                        style: TextStyle(
                          fontSize: 22,
                          color: ThemeColors.grayPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    icon: Icon(Icons.visibility, color: Colors.black),
                    label: Text('Details', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
