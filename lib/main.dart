import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DashboardScreen(),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // Adjust for desired grid layout
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCard(
            title: 'Total Sales',
            value: '\$10,000',
            icon: Icons.shopping_cart,
            onTap: () {
              // Navigate to sales details screen
            },
          ),
          _buildCard(
            title: 'New Users',
            value: '120',
            icon: Icons.person_add,
            onTap: () {
              // Navigate to user details screen
            },
          ),
          _buildCard(
            title: 'Total Sales',
            value: '\$20,000',
            icon: Icons.shopping_cart,
            onTap: () {
              // Navigate to sales details screen
            },
          ),
          _buildCard(
            title: 'New Users',
            value: '140',
            icon: Icons.person_add,
            onTap: () {
              // Navigate to user details screen
            },
          ),
          _buildCard(
            title: 'Total Sales',
            value: '\$9,000',
            icon: Icons.shopping_cart,
            onTap: () {
              // Navigate to sales details screen
            },
          ),
          _buildCard(
            title: 'New Users',
            value: '100',
            icon: Icons.person_add,
            onTap: () {
              // Navigate to user details screen
            },
          ),
          _buildCard(
            title: 'Total Sales',
            value: '\$8,000',
            icon: Icons.shopping_cart,
            onTap: () {
              // Navigate to sales details screen
            },
          ),
          _buildCard(
            title: 'New Users',
            value: '190',
            icon: Icons.person_add,
            onTap: () {
              // Navigate to user details screen
            },
          ),
          // Add more cards as needed
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String value,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48.0,
                color: const Color.fromARGB(255, 33, 243, 54),
              ),
              const SizedBox(height: 16.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
