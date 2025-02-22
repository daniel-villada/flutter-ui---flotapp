import 'package:flot/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Welcome Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning, Daniel',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              Text(
                'Welcome to Flot',
                style: TextStyle(fontSize: 18, color: ThemeColors.graySecondary),
              ),
            ],
          ),
          // Notification
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid, color: ThemeColors.graySecondary),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none, size: 32),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
