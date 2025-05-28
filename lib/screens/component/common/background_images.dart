import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {

  const BackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(opacity: 1,
      child: Image.asset('assets/images/Group-5.png', height: 250),
      )
      );
}
}