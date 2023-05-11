import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color(0xf2b20945),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('assets/images/Tashrif alive.jpg'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Tashrif Jubaer',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'tashrifalive@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white54,
                    ),
                  ), // Added the closing parenthesis here
                ],
              ),
            ),
          ),

          Expanded(

            child: ListView(

              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              children: [
                ListTile(

                  leading: const Icon(Icons.account_circle, color: Colors.deepOrange),
                  title: const Text('My Account'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,
                ),
                const Divider(height: 1, thickness: 2,),
                ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.deepOrange),
                  title: const Text('My Addresses'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,
                ),
                const Divider(height: 1, thickness: 2,),
                ListTile(
                  leading: const Icon(Icons.travel_explore, color: Colors.deepOrange),
                  title: const Text('My Trips'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,

                ),
                Divider(height: 1, thickness: 2),
                ListTile(
                  leading: const Icon(Icons.favorite, color: Colors.deepOrange),
                  title: const Text('My Wishlist'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,
                ),
                const Divider(height: 1, thickness: 2,),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.deepOrange),
                  title: const Text('Settings'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,
                ),
                const Divider(height: 1, thickness: 2,),
                ListTile(
                  leading: const Icon(Icons.help, color: Colors.deepOrange),
                  title: const Text('Help & Support'),
                  onTap: () {},
                  splashColor: Colors.deepOrange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
