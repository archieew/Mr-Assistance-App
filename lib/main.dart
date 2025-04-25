import 'package:flutter/material.dart';
import 'government.dart';
import 'return.dart';
import 'bills.dart';
import 'gift.dart';
import 'queue.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr Assistance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/government': (context) => GovernmentPage(),
        '/return': (context) => ReturnPage(),
        '/bills': (context) => BillsPage(),
        '/gift': (context) => GiftPage(),
        '/sss_id': (context) => SSSIdPage(),
        '/passport': (context) => PassportPage(),
        '/national_id': (context) => NationalIdPage(),
        '/philhealth_id': (context) => PhilhealthIdPage(),
        //'/queue': (context) => QueuePage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'images/assistance.png',
              height: 600,
              width: 300, 
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Choose your Concern',
              style: TextStyle(fontSize: 24),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 3,
                padding: const EdgeInsets.all(16),
                mainAxisSpacing: 10,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/government');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xffcb8aa0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/coatofarms.png',
                            height: 500, // Adjust the height as needed
                            width: 250, // Adjust the width as needed
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Government',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/return');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xffcb8aa0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/return.png',
                            height: 500, // Adjust the height as needed
                            width: 250, // Adjust the width as needed
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Return',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/bills');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xffcb8aa0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/genbills.png',
                            height: 600, // Adjust the height as needed
                            width: 250, // Adjust the width as needed
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Bills',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/gift');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xffcb8aa0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/gift.png',
                            height: 500, // Adjust the height as needed
                            width: 250, // Adjust the width as needed
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Gift',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
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
