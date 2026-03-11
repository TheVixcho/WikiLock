import 'package:flutter/material.dart';
import 'styles_object/DeadlockStyle.dart'; 
import 'rooster.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DeadlockStyle.background, 
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  DeadlockStyle.accentGreen.withOpacity(0.1),
                  Colors.transparent,
                ],
                radius: 1.5,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: DeadlockStyle.accentGreen.withOpacity(0.3),
                        blurRadius: 40,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.auto_awesome_mosaic,
                    size: 100,
                    color: DeadlockStyle.gold,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'WIKILOCK',
                  style: DeadlockStyle.titleStyle,
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: DeadlockStyle.accentGreen, width: 0.5),
                  ),
                  child: const Text(
                    'OLD GODS · NEW BLOOD',
                    style: TextStyle(
                      color: DeadlockStyle.accentGreen,
                      letterSpacing: 4,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 250,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RoosterPage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: DeadlockStyle.gold, width: 1.5),
                      shape: const BeveledRectangleBorder(),
                      backgroundColor: DeadlockStyle.surface,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.grid_view_rounded, color: DeadlockStyle.gold),
                        SizedBox(width: 15),
                        Text(
                          'ACCEDER AL ROOSTER',
                          style: TextStyle(
                            color: DeadlockStyle.gold,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
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
    );
  }
}