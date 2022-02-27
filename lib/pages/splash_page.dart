import 'package:flutter/material.dart';
import 'package:plant_app/models/bottom_menu.dart';
import 'package:plant_app/widgets/bottom_nav.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Let\'s plant with us',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.8),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Bring natue home',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.8),
            ),
            SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/images/Asset1.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavbar()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 80.0, vertical: 12.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Create an account',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(.7),
                    letterSpacing: 1),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forget password?',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red.withOpacity(.5),
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
