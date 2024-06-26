import 'package:flutter/material.dart';
import 'package:pixel_tech_task/utils/size_utility.dart';

import '../../components/custom_title.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import 'widgets/bill_card.dart';

class Bills extends StatefulWidget {
  const Bills({super.key});

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {

  List<Widget> bills = [
    const BillCard(paid: false, month: 'أكتوبر',),
    const BillCard(paid: false, month: 'نوفمبر',),
    const BillCard(paid: true, month: 'مارس',),
    const BillCard(paid: true, month: 'أبريل',),
    const BillCard(paid: true, month: 'مايو',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leadingWidth: getSize(context).width,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: black.withOpacity(.1),
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsetsDirectional.only(start: 10),
                    decoration: BoxDecoration(
                      color: blueGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.arrow_back_rounded,color: white,size: 22,),
                  )
                ],
              ),
              const Align(
                alignment: Alignment.center,
                child: CustomTitle(
                  text: "الرسوم الدراسية",
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 65,
              width: getSize(context).width,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                color: blueGrey,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: black.withOpacity(.1),
                  )
                ],
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: white,
                ),
                child: const Center(
                  child: CustomTitle(
                    text: "الرسوم الدراسية",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: blueGrey,
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              margin: const EdgeInsets.only(left: 20,right: 20,bottom: 45),
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
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
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "المتبقي :    ",
                      style: TextStyle(
                        fontFamily: cairo,
                          color: yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                          text: "1300 ريال عماني",
                          style: TextStyle(
                              fontFamily: cairo,
                              fontWeight: FontWeight.w700,
                              color: blueGrey,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                      const CustomTitle(
                        text: "رسوم شهر سبتمبر",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: black,
                      ),
                      const SizedBox(height: 5,),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: "المبلغ المطلوب ",
                          style: TextStyle(
                              fontFamily: cairo,
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                              text: "100 ريال عماني",
                              style: TextStyle(
                                  fontFamily: cairo,
                                  fontWeight: FontWeight.w600,
                                  color: blueGrey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            text: "مدفوع",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: yellow,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      const CustomTitle(
                        text: "الفتورة",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: black,
                        decoration: TextDecoration.underline,
                       decorationColor: blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ...bills.map((card) => card),
            Container(
              height: 65,
              margin: const EdgeInsets.only(left: 20,right: 20,bottom: 25,top: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: blueGrey,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: black.withOpacity(.1),
                  )
                ],
              ),
              child: const Center(
                child: CustomTitle(
                  text: "الدفع",
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
