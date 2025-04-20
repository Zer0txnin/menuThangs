import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String name;
  final String imagePath;

  const FoodDetailsScreen({
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        elevation: 0,
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                height: 230,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 28),
            Text(
              name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Enjoy a relaxing bite of $name at our cozy café. Made fresh with love and good vibes.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue.shade100,
                foregroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              ),
              child: Text('Back to Menu'),
            ),
          ],
        ),
      ),
    );
  }
}