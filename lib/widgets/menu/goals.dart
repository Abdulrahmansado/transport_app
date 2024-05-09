import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:real_estate_app/constants.dart';

import '../../constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'اهدافنا',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(text: 'نقدم لكم افضل خدمات النقل  '),
        buildGoals(text: 'نقل اثاث منزلي وبضائع داخل وخارج اسطنبول'),
        buildGoals(text: 'شحن الى كافة الولايات التركية  '),
        buildGoals(text: 'فك وتركيب تغليف  '),
        buildGoals(text: 'تخزين اثاث وبضائع بأرخص الاسعار  '),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(width: kDefaultPadding / 2),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
