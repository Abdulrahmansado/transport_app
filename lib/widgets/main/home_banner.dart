import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../reponsive.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/nakliyat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          /*
          Image.asset(
            'assets/images/kak.jpg',

            //fit: BoxFit.cover,
          ),
        */
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ALOTHMAN_NKLYAT',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.green[800], fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.green[800],
                          fontWeight: FontWeight.bold),
                ),
                Divider(color: Colors.black, endIndent: 500),

                /*
                 Text(
                  'As-Saad Medicals',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                */
                Text(
                  'لنقل البضائع  & \nوتركيبها ',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.orange[800],
                          fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.orange[800],
                          fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    'اتصل بنا',
                    style: TextStyle(color: kDarkColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
