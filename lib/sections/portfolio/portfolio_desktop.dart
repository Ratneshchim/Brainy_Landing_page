import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import 'package:video_player/video_player.dart';



class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {


  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://brainystorageacct.blob.core.windows.net/info-content/brainy_video_v1.mp4')
      ..addListener(() => setState(() {
            videoPosition = _controller.value.position;
          }))
      ..initialize().then((_) => setState(() {
            videoLength = _controller.value.duration;
          }));
  }

  

 late Duration videoLength;
 late Duration videoPosition;
 double volume = 0.5;




  @override
  Widget build(BuildContext context) {

    return Container(
      height: 850,
      width: double.infinity,
      
      child: Row(
        children: [
          Expanded(child: Stack(
            children: [
              Positioned(left: 80, right: 80, bottom: 80,
              child: SizedBox (
                width: double.infinity,
                height: 712,
                child: Videogen(),
              ),),
            ],
          ))
        ],
      ),
    );
  }

  @override
    void dispose() {
      super.dispose();
      _controller.dispose();
  }

  Widget Videogen() {
  return Stack(
    alignment: Alignment.topCenter, // Align the video in the center of the screen
    children: <Widget>[
      // Other widgets that should appear behind the video
      // Place your widgets here...

      // Video player box
      ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller)),
    ),

      // Play/Pause button overlay
      Positioned.fill(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Container(
            color: Colors.transparent, // Make the button container transparent
            child: Center(
              child: Icon(
                _controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                size: 48,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}





}

// End of Class here



  String convertToMinutesSeconds(Duration duration) {
  final parsedMinutes = duration.inMinutes < 10
      ? '0${duration.inMinutes}'
      : duration.inMinutes.toString();

  final seconds = duration.inSeconds % 60;

  final parsedSeconds =
      seconds < 10 ? '0${seconds % 60}' : (seconds % 60).toString();
  return '$parsedMinutes:$parsedSeconds';
}




IconData animatedVolumeIcon(double volume) {
  if (volume == 0)
    return Icons.volume_mute;
  else if (volume < 0.5)
    return Icons.volume_down;
  else
    return Icons.volume_up;
}
































// import 'package:flutter/material.dart';
// import 'package:folio/configs/configs.dart';
// import 'package:folio/constants.dart';
// import 'package:folio/utils/project_utils.dart';
// import 'package:folio/utils/utils.dart';
// import 'package:folio/widget/custom_text_heading.dart';
// import 'package:folio/widget/project_card.dart';

// class PortfolioDesktop extends StatefulWidget {
//   const PortfolioDesktop({Key? key}) : super(key: key);

//   @override
//   State<PortfolioDesktop> createState() => _PortfolioDesktopState();
// }

// class _PortfolioDesktopState extends State<PortfolioDesktop> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: Space.h!,
//       child: Column(
//         children: [
//           const CustomSectionHeading(
//             text: "\nPortfolio",
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
