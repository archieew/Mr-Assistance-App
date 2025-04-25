import 'package:flutter/material.dart';
import 'dart:math';

class QueuePage extends StatefulWidget {
  final String tabTitle;

  QueuePage({required this.tabTitle});

  @override
  _QueuePageState createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  late String _queueNumber;

  @override
  void initState() {
    super.initState();
    _generateQueueNumber();
  }

  void _generateQueueNumber() {
    // Generate two random numbers between 0 and 99
    int random1 = Random().nextInt(100);
    _queueNumber = 'Q$random1';
  }

  @override
  Widget build(BuildContext context) {
    String tabInitial = widget.tabTitle.substring(0, 1).toUpperCase();

    return Scaffold(
      appBar: AppBar(
        title: Text('Queue'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Queue Number:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              _queueNumber,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
