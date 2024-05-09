import 'package:flutter/material.dart';
import 'package:medical_wep/widgets/main/project_card.dart';

import '../../constants.dart';
import '../../models/projects.dart';
import '../../reponsive.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/models/projects.dart';
// import 'package:real_estate_app/responsive.dart';
// import 'package:real_estate_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
          Responsive(
            desktop: Container(
              child: buildGridView(
                itemCount: demoProjects.length,
                crossAxsitCount: 3,
                childAspectRatio: 0.75,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
            ),
            tablet: Container(
              child: buildGridView(
                itemCount: demoProjects.length,
                crossAxsitCount:
                    MediaQuery.of(context).size.width < 900 ? 2 : 3,
                childAspectRatio: 0.75,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
            ),
            mobileLarge: Container(
              child: buildGridView(
                itemCount: demoProjects.length,
                crossAxsitCount: 2,
                childAspectRatio: 0.75,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
            ),
            mobile: Container(
              child: buildGridView(
                itemCount: demoProjects.length,
                crossAxsitCount: 1,
                childAspectRatio: 0.65,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
            ),
          )
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}
