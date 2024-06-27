import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/constants.dart';

class BillCard extends StatefulWidget {
  final bool paid;
  final String month;
  const BillCard({super.key, required this.paid, required this.month});

  @override
  State<BillCard> createState() => _BillCardState();
}

class _BillCardState extends State<BillCard> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 25),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "رسوم شهر ",
                  style: const TextStyle(
                      fontFamily: cairo,
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.month,
                      style: const TextStyle(
                          fontFamily: cairo,
                          fontWeight: FontWeight.w600,
                          color: black,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "المبلغ المطلوب ",
                  style: TextStyle(
                      fontFamily: cairo,
                      color: colorF50,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                      text: "100 ريال عماني",
                      style: TextStyle(
                          fontFamily: cairo,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: widget.paid? true : value,
              onChanged: (val) {
                setState(() {
                  value = val!;
                });
              },
              activeColor: widget.paid? color775.withOpacity(0.3) : color775,
              checkColor: white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
