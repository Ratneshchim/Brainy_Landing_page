import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/photos/brainy_logo.png', // Replace with the path to your logo image
          height: 40, // Adjust the height of the logo as needed
          // You can also specify width if necessary
        ),
        SizedBox(width: 8), // Add spacing between logo and text
        Text(
          "Brainy",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Montserrat',
            
          ),
        ),
      ],
    );
  }
}







































// import 'package:flutter/material.dart';
// import 'package:folio/configs/app_typography.dart';

// class NavBarLogo extends StatelessWidget {
//   const NavBarLogo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
        
//         Text(
//           "< ",
//           style: AppText.b1,
//         ),
//         Text(
//           "Ratnesh",
//           style: AppText.b1b!.copyWith(
//             fontFamily: 'Agustina',
//           ),
//         ),
//         Text(
//           MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
//           style: AppText.b1,
//         )
//       ],
//     );
//   }
// }
