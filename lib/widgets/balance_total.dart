import 'package:flutter/material.dart';

class BalanceTotal extends StatelessWidget {
  const BalanceTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final title = 'Your balance';
    final balance = '\$3,200.00';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 200,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  balance,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.visibility_off)),
              ],
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Add Money', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
