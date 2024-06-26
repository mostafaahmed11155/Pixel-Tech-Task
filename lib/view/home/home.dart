import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixel_tech_task/utils/size_utility.dart';
import 'package:pixel_tech_task/view/home/widgets/bus_card.dart';
import 'package:pixel_tech_task/view/home/widgets/child_card.dart';

import '../../components/custom_title.dart';
import '../../utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> busCards = [
    const BusCard(),
    const BusCard(),
    const BusCard(),
    const BusCard(),
  ];

  List<Widget> childCards = [
    const ChildCard(withBus: true,),
    const ChildCard(withBus: true,),
    const ChildCard(withBus: false,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 155,
        backgroundColor: blueGrey,
        leadingWidth: 500,
        leading: Container(
          height: 80,
          width: getSize(context).width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: grey,
                    radius: 40,
                    backgroundImage: AssetImage("assets/dummy/person.webp",),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(
                        text: "اهلا بك",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                      CustomTitle(
                        text: "محمد هاني محمد",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  const Icon(FontAwesomeIcons.bell,color: white,size: 35,),
                  Positioned(
                    top: 5,
                    right: 2,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    ...busCards.map((card) => card)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ...childCards.map((childCard) => childCard)
          ],
        ),
      ),
    );
  }
}
