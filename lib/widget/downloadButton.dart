import 'package:flutter/material.dart';
import 'dart:html' as html; // For opening a URL in a new tab

class CustomImageButton extends StatelessWidget {
  final String imagePath;
  final String redirectUrl;

  const CustomImageButton({required this.imagePath, required this.redirectUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Redirect to the specified URL
        // You can use any method to navigate, e.g., Navigator, html.window.open, etc.
        // For this example, we'll use html.window.open to open the URL in a new tab.
        html.window.open(redirectUrl, 'https://www.google.com/');
      },
      child: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        width: 150, // Set the desired width
        height: 50, // Set the desired height
      ),
    );
  }
}
