import 'package:flutter/material.dart';
import 'package:flutter_bilheteiro/utils/i18n.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  HotelScreen({Key? key , required this.hotel}) : super(key: key);

  String valor1 = "\$".i18n;
  String valor2 = "night".i18n; 
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),

              )
            ),
          ), 
          const Gap(10), 
          Text("${hotel['place']}".i18n, style: Style.headLineStyle2.copyWith(color: Style.kakiColor),),
          const Gap(5), 
          Text("${hotel['destination']}".i18n, style: Style.headLineStyle3.copyWith(color: Colors.white),),
          const Gap(8), 
          Text("${valor1} ${hotel['price']}/${valor2}", style: Style.headLineStyle1.copyWith(color: Style.kakiColor),)
        ],
      ),
    );
  }
}
