import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/1.4_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeChange ThemeChangeTrue =
        Provider.of<ThemeChange>(context, listen: true);
    ThemeChange ThemeChangeFalse =
        Provider.of<ThemeChange>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/img/girl.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Aishawarya ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: ThemeChangeTrue.isDark
                  ? Icon(
                      Icons.mode_night,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : Icon(
                      Icons.sunny,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              title: Text(
                "${ThemeChangeTrue.isDark ? 'Dark Mode' : 'Light mode'}",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: Switch(
                value: ThemeChangeTrue.isDark,
                onChanged: (value) {
                  ThemeChangeFalse.Theme();
                },
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.grid_on,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Story',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Setting and Privacy',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mode_comment_outlined,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Help Center',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
