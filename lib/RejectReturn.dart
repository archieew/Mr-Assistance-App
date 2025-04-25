import 'package:flutter/material.dart';

class RejectReturnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:
            Color(0xffcb8aa0), // Setting the background color of the app bar
        title: Text(
          'Reject Return',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        // Center the content vertically and horizontally
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          color: Color(0xffcb8aa0), // Apply the desired container color
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Sorry for the Inconvenience',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey[200],
                child: Text(
                  'We do not accept Product Returns without the Product\'s Warranty Pertaining to our Rules and Regulation and obeying the Store Policies.',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
