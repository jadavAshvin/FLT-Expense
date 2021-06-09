import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String image;
  final double sizeHeight;
  final double sizeWidth;

  ImageView(this.image, this.sizeHeight, this.sizeWidth);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: sizeHeight,
      width: sizeWidth,
    );
  }
}

// class SVGView extends StatelessWidget {
//   final String image;

//   final double width;

//   SVGView({this.image, this.width});

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       image,
//       fit: BoxFit.cover,
//       width: width,
//     );
//   }
// }
