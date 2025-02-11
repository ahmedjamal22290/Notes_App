import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 40,
            margin: EdgeInsets.only(right: 8),
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(0.15),
            ),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        title: Text(
          'Notes',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
