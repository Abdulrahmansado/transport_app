import 'package:flutter/material.dart';
import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.cover,
            ),

            /*
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100.0,
            ),
          */
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'AL-OSMAN',
                style: TextStyle(color: Colors.brown),
              ),
            ),
            //  Spacer(),

            /*
            Text(
              'Medical Equipmets \n Consultancy Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
           */
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
