import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/avatar.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Avatar(
              url: faker.image.image(
                keywords: ['avatar'],
              ),
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fake user',
              style: TextStyle(fontSize: 20),
            ),
            const Text('test@test.com'),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              onTap: () {},
              title: const Text('Sign Out'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
