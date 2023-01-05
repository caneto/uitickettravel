import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String txt;
  const AppIconText({Key? key , required this.icon, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12), vertical: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        color: Colors.white
      ),
      child: Row(
        children: [
           Icon(icon , color: const Color(0xFFBFC2DF),),
          Gap(AppLayout.getHeight(10)),
          Text(txt, style: Style.textStyle,)
        ],
      ),
    );
  }
}
