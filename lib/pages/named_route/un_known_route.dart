import 'package:flutter/material.dart';
class UnKnownPage extends StatelessWidget {
  const UnKnownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Not Found"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            "Page not found",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );;
  }
}
