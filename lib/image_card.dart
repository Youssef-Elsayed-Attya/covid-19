import 'package:flutter/material.dart';

class image_builder extends StatelessWidget {
  const image_builder({Key? key,required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(image),width: 450,);
  }
}
