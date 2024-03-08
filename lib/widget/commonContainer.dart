// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:folio/utils/utils.dart';

// ignore: non_constant_identifier_names
Widget CommonContainer(String s1, String s2, String s3, String image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding:  const EdgeInsets.symmetric(horizontal: 180, vertical: 30),
    child: Row(
      children: [
        imageLeft? Expanded(child: Container(
          height: 530,
          decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
          ),
        )): Container(),


        Expanded(child: Column(
          crossAxisAlignment: imageLeft? CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
            Text(s1.toUpperCase(), 
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            const SizedBox(height: 10,),
            Text(
              s2.toUpperCase(), 
              textAlign:imageLeft? TextAlign.right: TextAlign.left,
              style: const TextStyle(color: Colors.black, fontSize: 80, height: 1.2, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),
            Text(s3,
            textAlign:imageLeft? TextAlign.right: TextAlign.left, 
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            
          ],
        )),
        !imageLeft? Expanded(child: Container(
          height: 530,
          decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
          ),
        )): Container()
      ]
    ),

  );

}