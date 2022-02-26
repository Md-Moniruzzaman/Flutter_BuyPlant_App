import 'package:flutter/material.dart';

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
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/images/Asset1.png'),
            )
          ],
        ),
      ),
    );
  }
}
