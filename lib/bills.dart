import 'package:flutter/material.dart';
import 'queue.dart';

class BillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bills'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryOption(
            title: 'Water',
            icon: Icons.local_drink, // Water icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WaterProvidersPage()),
              );
            },
          ),
          CategoryOption(
            title: 'Electric',
            icon: Icons.flash_on, // Electric icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ElectricProvidersPage()),
              );
            },
          ),
          CategoryOption(
            title: 'Internet',
            icon: Icons.wifi, // Internet icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InternetProvidersPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryOption extends StatelessWidget {
  final String title;
  final IconData icon; // Icon data
  final VoidCallback onTap;

  const CategoryOption({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xffcb8aa0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icon, // Display icon
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class WaterProvidersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Providers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProviderOption(
            text: 'Maynilad Water Services, Inc.',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Maynilad Water Services, Inc.')),
              );
            },
          ),
          ProviderOption(
            text: 'Manila Water Company',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Manila Water Company')),
              );
            },
          ),
          ProviderOption(
            text: 'Metropolitan Waterworks and Sewerage System (MWSS)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle:
                            'Metropolitan Waterworks and Sewerage System (MWSS)')),
              );
            },
          ),
          ProviderOption(
            text: 'Laguna Water',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(tabTitle: 'Laguna Water')),
              );
            },
          ),
          ProviderOption(
            text: 'Subic Water and Sewerage Company (SubicWater)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle:
                            'Subic Water and Sewerage Company (SubicWater)')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ElectricProvidersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electric Providers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProviderOption(
            text: 'Manila Electric Company (Meralco)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle: 'Manila Electric Company (Meralco)')),
              );
            },
          ),
          ProviderOption(
            text: 'Visayan Electric Company (VECO)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Visayan Electric Company (VECO)')),
              );
            },
          ),
          ProviderOption(
            text: 'Davao Light and Power Company (DLPC)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle: 'Davao Light and Power Company (DLPC)')),
              );
            },
          ),
          ProviderOption(
            text: 'Southern Leyte Electric Cooperative (SOLECO)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle:
                            'Southern Leyte Electric Cooperative (SOLECO)')),
              );
            },
          ),
          ProviderOption(
            text: 'Iloilo Electric Cooperative (ILECO)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(
                        tabTitle: 'Iloilo Electric Cooperative (ILECO)')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class InternetProvidersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Providers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProviderOption(
            text: 'PLDT Home',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(tabTitle: 'PLDT Home')),
              );
            },
          ),
          ProviderOption(
            text: 'Globe Telecom',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(tabTitle: 'Globe Telecom')),
              );
            },
          ),
          ProviderOption(
            text: 'Converge ICT Solutions Inc.',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Converge ICT Solutions Inc.')),
              );
            },
          ),
          ProviderOption(
            text: 'Sky Cable Corporation',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Sky Cable Corporation')),
              );
            },
          ),
          ProviderOption(
            text: 'Eastern Communications',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QueuePage(tabTitle: 'Eastern Communications')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProviderOption extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ProviderOption({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xffcb8aa0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
