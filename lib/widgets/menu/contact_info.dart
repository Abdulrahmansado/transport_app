import 'package:flutter/material.dart';
// import 'package:real_estate_app/constants.dart';

import '../../constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Istanbul / Başakşehir',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Turkey',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'khaled.tantoura@gmail.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+905538619330',
        ),
        // buildContactInfo(
        //   title: 'Website',
        //   text: 'my@website.com',
        // ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
