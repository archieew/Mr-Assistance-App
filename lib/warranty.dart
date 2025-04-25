import 'package:flutter/material.dart';
import 'queue.dart';
import 'RejectReturn.dart';

class WarrantyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:
            Color(0xffcb8aa0),
        title: Text(
          'Warranty',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          decoration: BoxDecoration(
            color: Color(0xffcb8aa0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Returning of Product',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Text(
                'Does the Product you want to return have a Warranty?',
                style: TextStyle(color: Colors.white, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                QueuePage(tabTitle: 'Warranty')),
                      );
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RejectReturnPage()),
                      );
                    },
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
