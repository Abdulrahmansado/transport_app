import 'package:flutter/material.dart';
import 'package:medical_wep/widgets/main/projects.dart';
import 'package:medical_wep/widgets/main/recommendations.dart';

import '../../screens/home_screen.dart';
import 'home_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            //    Recommendations(),
          ],
        ),
      ),
    );
  }
}

class Recomendations {}
