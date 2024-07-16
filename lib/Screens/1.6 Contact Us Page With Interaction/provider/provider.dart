import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageProvider extends ChangeNotifier
{

  void phoneLauncher() {
    Uri uri = Uri(scheme: 'tel', path: '+91 1234567890');
    launchUrl(uri);
  }

  void mailLauncher() {
    Uri uri = Uri.parse('mailto: aish@gmail.com');
    launchUrl(uri);
  }
  void instaLauncher() {
    Uri uri = Uri.parse('https://www.instagram.com/accounts/login/?hl=en');
    launchUrl(uri);
  }
}