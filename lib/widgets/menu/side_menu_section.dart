import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/widgets/menu/aboutas.dart';
// import 'package:real_estate_app/widgets/menu/contact_info.dart';
// import 'package:real_estate_app/widgets/menu/goals.dart';

import '../../constants.dart';
import 'contact_info.dart';
import 'goals.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);
  Future<void> UrLauncher(String name) async {
    String url = "https://www.facebook.com";
    if (name == 'facebook') {
      url = "https://www.facebook.com/yahya92alshami?mibextid=ZbWKwL/";
    } else if (name == 'whatsapp') {
      url = "whatsapp://send?phone=+905538619330";
    } else if (name == 'instagram') {
      url = "https://www.instagram.com/othman_nklyat/";
    } else if (name == 'telegram') {
      url = "https://telegram.me/+905538619330";
      //https://telegram.me/905555555555
    }

    if (await canLaunch("${url}")) {
      await launch(url);
    } else {
      throw 'could not launch $url ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'حولنا',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: kDefaultPadding / 2, left: 5),
                      child: Row(
                        children: [
                          //SvgPicture.asset('assets/icons/check.svg'),
                          //SizedBox(width: kDefaultPadding / 4),
                          Expanded(
                            child: Text('نقدم لكم افضل خدمات النقل' +
                                ' نقل اثاث منزلي وبضائع داخل وخارج اسطنبول' +
                                ' شحن الى كافة الولايات التركية' +
                                ' فك وتركيب تغليف' +
                                ' تخزين اثاث وبضائع بأرخص الاسعار'),
                          ),
                        ],
                      ),
                    ),
                    //  AboutAs(),
                    Divider(),
                    Goals(),
                    Divider(),
                    ContactInfo(),
                    SizedBox(height: kDefaultPadding),
                    /*
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(width: kDefaultPadding / 2),
                           
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    */
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              UrLauncher("instagram");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/instagram-logo-8869.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              UrLauncher("whatsapp");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/whatsapp-logo-4464.svg'),
                          ),

                          /*
                               ElevatedButton(onPressed: (){}, 
                          child:SvgPicture.asset('assets/icons/github.svg'),),
                          */
                          IconButton(
                            onPressed: () {
                              UrLauncher("facebook");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/facebook-2873.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              UrLauncher("telegram");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/telegram-logo-5941.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/widgets/menu/contact_info.dart';
import 'package:real_estate_app/widgets/menu/goals.dart';

import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: kDefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(width: kDefaultPadding / 2),
                           /*
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                           */
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          //

                          //
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),

                          /*
                               ElevatedButton(onPressed: (){}, 
                          child:SvgPicture.asset('assets/icons/github.svg'),),
                          */
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/