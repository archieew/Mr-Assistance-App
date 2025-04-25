import 'package:flutter/material.dart';
import 'queue.dart';

class GovernmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0),
        title: Text(
          'Choose your ID',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sss_id');
            },
            child: _buildTile('SSS ID', Icons.card_membership, 0xffcb8aa0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/passport');
            },
            child: _buildTile('Passport', Icons.flight, 0xffcb8aa0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/national_id');
            },
            child: _buildTile('National ID', Icons.account_balance, 0xffcb8aa0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/philhealth_id');
            },
            child:
                _buildTile('Philhealth ID', Icons.local_hospital, 0xffcb8aa0),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(String title, IconData icon, int color) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SSSIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0),
        title: Text(
          'SSS ID',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SSS ID',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'To get your SSS ID, you need to:\n\n'
            '- Fill out the SSS Form E-6.\n'
            '- Submit a primary ID or two secondary IDs.\n'
            '- Provide supporting documents.',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QueuePage(tabTitle: 'Government'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffcb8aa0)),
            child: Text(
              'Yes I have it',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class PassportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0),
        title: Text(
          'Passport',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Passport',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'To get your Passport, you need to:\n\n'
            '- Fill out the passport application form.\n'
            '- Submit birth certificate and other supporting documents.\n'
            '- Pay the passport processing fee.',
            style: TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QueuePage(tabTitle: 'Government'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffcb8aa0)),
            child: Text(
              'Yes I have it',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class NationalIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0),
        title: Text(
          'National ID',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'National ID',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'To get your National ID, you need to:\n\n'
            '- Submit birth certificate or any other proof of identity and citizenship.\n'
            '- Accomplish the Philippine Identification System (PhilSys) registration form.\n'
            '- Schedule an appointment for registration.',
            style: TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QueuePage(tabTitle: 'Bill'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffcb8aa0)),
            child: Text(
              'Yes I have it',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PhilhealthIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0),
        title: Text(
          'Philhealth ID',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Philhealth ID',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'To get your Philhealth ID, you need to:\n\n'
            '- Accomplish the PhilHealth Member Registration Form.\n'
            '- Submit valid identification documents.\n'
            '- Pay the PhilHealth contribution.',
            style: TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QueuePage(tabTitle: 'Government'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffcb8aa0)),
            child: Text(
              'Yes I have it',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
