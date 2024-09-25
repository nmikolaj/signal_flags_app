import 'package:flutter/material.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {

  // Function to launch URLs
  void _launchURL(String url) async {
    const url = 'https://msi.nga.mil/Publications/ICOS';
  
    // Convert string into Uri object
    Uri uri = Uri.parse(url);
  
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Flag Signals App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                'Welcome to the Flag Signals App! This app is designed to help users learn about the signal flags used in maritime communication.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'As this is my first app, I wanted to create something simple and practical. '
                'Signals with multiple flags used in this app were handpicked by me, based on what I believe to be the most commonly used ones. '
                'You can find all of them and more information in the official document available here:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  _launchURL('https://msi.nga.mil/Publications/ICOS');
                },
                child: const Text(
                  'Official Signal Flags Handbook',
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Contact', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text(
                'I am trying to improve this app and expand its features. Your feedback is highly valued and appreciated, so please feel free to reach out!',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              const Text('email@example.com', style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'Signal Flags App',
                    applicationVersion: '1.0.0',
                    applicationLegalese: '© 2024 Mikolaj N',
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 78, 78, 78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: const Text(
                  'More Info',
                  style: TextStyle(color: kWhiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}