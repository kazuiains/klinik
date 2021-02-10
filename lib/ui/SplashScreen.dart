import 'package:flutter/cupertino.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            "Klinik Coeg",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
