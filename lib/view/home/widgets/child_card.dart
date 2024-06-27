import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixel_tech_task/model/student.dart';
import 'package:pixel_tech_task/utils/size_utility.dart';

import '../../../components/custom_title.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';

class ChildCard extends StatelessWidget {
  final StudentInfo studentInfo;
  const ChildCard({super.key, required this.studentInfo});

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
            color: black.withOpacity(.2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: colorF50,
                    radius: 25,
                    backgroundImage: AssetImage("assets/dummy/girl.webp",),
                  ),
                  const SizedBox(width: 10,),
                  CustomTitle(
                    text: studentInfo.studentName,
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
                  border: Border.all(width: 1,color: colorF50),
                  color: white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: studentInfo.studentAttendance? color775 : color707,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(width: 10,),
                    CustomTitle(
                      text: studentInfo.activity,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: studentInfo.studentAttendance? color775 : color707,
                    ),
                    const SizedBox(width: 10,),
                    Image.asset("assets/icons/arrow_shuffle.webp",scale: 3.0,color: color775,)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "الصف :    ",
              style: const TextStyle(
                fontFamily: cairo,
                  color: colorF42,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: studentInfo.grade,
                  style: const TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: color775,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "رقم الحافلة :    ",
              style: const TextStyle(
                  fontFamily: cairo,
                  color: colorF42,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: studentInfo.busNumber.toString(),
                  style: const TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: color775,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "مشرف الحافلة :    ",
              style: const TextStyle(
                  fontFamily: cairo,
                  color: colorF42,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  text: studentInfo.busSupervisor,
                  style: const TextStyle(
                      fontFamily: cairo,
                      fontWeight: FontWeight.w600,
                      color: color775,
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
                  color: color2775.withOpacity(0.1),
                ),
                 child:  Image.asset("assets/icons/call.webp",scale: 3.0,color: color2775,)
              ),
              const SizedBox(width: 15,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: colorF42.withOpacity(0.1),
                ),
                child: Image.asset("assets/icons/message.webp",scale: 3.0,color: colorF42,),
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
                  color: color775,
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/location_pin.webp",scale: 3.0,color: white,),
                    const SizedBox(width: 10,),
                    const CustomTitle(
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
                  border: Border.all(color: colorF42,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/camera.webp",scale: 3.0,color: colorF42,),
                    const SizedBox(width: 10,),
                    const CustomTitle(
                      text: "مشاهده الحافله",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: colorF42,
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
