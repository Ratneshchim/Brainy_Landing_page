import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';

import 'package:video_player/video_player.dart';

import 'package:folio/widget/commonContainer.dart';

class Feature3Desktop extends StatefulWidget {
  const Feature3Desktop({Key? key}) : super(key: key);

  @override
  State<Feature3Desktop> createState() => _Feature3DesktopState();
}

class _Feature3DesktopState extends State<Feature3Desktop> {



  @override
  Widget build(BuildContext context) {


    return CommonContainer(
      '',
      'Youtube Knowledge',
      'Enjoy the auto-highlighted Transcript as you listen.',
      'assets/photos/4.png',
      true
      
    );

    
  }


}

































// import 'package:flutter/material.dart';
// import 'package:folio/configs/configs.dart';
// import 'package:folio/constants.dart';
// import 'package:folio/utils/project_utils.dart';
// import 'package:folio/utils/utils.dart';
// import 'package:folio/widget/custom_text_heading.dart';
// import 'package:folio/widget/project_card.dart';

// class Feature3Desktop extends StatefulWidget {
//   const Feature3Desktop({Key? key}) : super(key: key);

//   @override
//   State<Feature3Desktop> createState() => _Feature3DesktopState();
// }

// class _Feature3DesktopState extends State<Feature3Desktop> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: Space.h!,
//       child: Column(
//         children: [
//           const CustomSectionHeading(
//             text: "\nFeature3",
//           ),
//           const CustomSectionSubHeading(
//             text: "Here are few samples of my previous work :)\n\n",
//           ),
//           Wrap(
//             alignment: WrapAlignment.center,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             runSpacing: AppDimensions.normalize(10),
//             children: ProjectUtils.banners
//                 .asMap()
//                 .entries
//                 .map(
//                   (e) => ProjectCard(
//                     banner: e.value,
//                     projectIcon: ProjectUtils.icons[e.key],
//                     projectLink: ProjectUtils.links[e.key],
//                     projectTitle: ProjectUtils.titles[e.key],
//                     projectDescription: ProjectUtils.description[e.key],
//                   ),
//                 )
//                 .toList(),
//           ),
//           Space.y2!,
//           SizedBox(
//             height: AppDimensions.normalize(14),
//             width: AppDimensions.normalize(50),
//             child: OutlinedButton(
//               onPressed: () => openURL(StaticUtils.gitHub),
//               child: Text(
//                 'See More',
//                 style: AppText.l1b,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
