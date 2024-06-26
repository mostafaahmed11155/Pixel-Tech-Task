import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixel_tech_task/utils/size_utility.dart';

import '../../../components/custom_title.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';

class ChildCard extends StatelessWidget {
  final bool withBus;
  const ChildCard({super.key, required this.withBus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSize(context).width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsetsDirectional.only(end: 20,bottom: 25,start: 20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: grey,
                    radius: 30,
                  ),
                  SizedBox(width: 10,),
                  CustomTitle(
                    text: "نور هاني",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: grey),
                  color: white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: withBus? blueGrey : red,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(width: 10,),
                    CustomTitle(
                      text: withBus? "مع الحافله" : "غائب",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: withBus? blueGrey : red,
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.blur_circular_rounded,color: blueGrey,)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "الصف :    ",
              style: TextStyle(
                fontFamily: cairo,
                  color: yellow,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: "5 - 9",
                  style: TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: blueGrey,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "رقم الحافلة :    ",
              style: TextStyle(
                  fontFamily: cairo,
                  color: yellow,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: "123",
                  style: TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: blueGrey,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "مشرف الحافلة :    ",
              style: TextStyle(
                  fontFamily: cairo,
                  color: yellow,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: "مني أحمد",
                  style: TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: blueGrey,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: purple.withOpacity(0.1),
                ),
                child: const Icon(Icons.call,size: 30,color: purple,),
              ),
              const SizedBox(width: 15,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: yellow.withOpacity(0.1),
                ),
                child: const Icon(FontAwesomeIcons.facebookMessenger,size: 30,color: yellow,),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: blueGrey,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.locationPin,color: white,size: 20,),
                    SizedBox(width: 10,),
                    CustomTitle(
                      text: "تتبع الحافله",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: white,
                    ),
                  ],
                ),
              )),
              const SizedBox(width: 10,),
              Expanded(child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: white,
                  border: Border.all(color: yellow,width: 1)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt,color: yellow,),
                    SizedBox(width: 10,),
                    CustomTitle(
                      text: "مشاهده الحافله",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: yellow,
                    ),
                  ],
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
