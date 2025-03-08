import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // title: Text('Welcome'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/twitter_logo.png',
              width: 48,
              height: 48,
              color: Colors.white,
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Welcome to Twitter',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'What\'s happening in the world right now',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 48,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      side: BorderSide(color: Colors.blue.shade300),
                    ),
                    child: Text('Sign Up'),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      side: BorderSide(color: Colors.blue.shade300),
                    ),
                    child: Text('Log In'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
