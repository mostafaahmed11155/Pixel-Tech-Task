import 'package:flutter/material.dart';
import 'package:pixel_tech_task/utils/colors.dart';

import '../../../components/custom_title.dart';

class BusCard extends StatelessWidget {
  const BusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsetsDirectional.only(end: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: black.withOpacity(.1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/freepik.webp",
                scale: 5.0,
              ),
              const SizedBox(width: 10,),
              const CustomTitle(
                text: "Bus-547",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: grey,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
              const SizedBox(width: 10,),
              const CustomTitle(
                text: "شحنات قيد التوصيل",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
