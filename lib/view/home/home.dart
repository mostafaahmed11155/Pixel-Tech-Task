import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_tech_task/model/student.dart';
import 'package:pixel_tech_task/utils/size_utility.dart';
import 'package:pixel_tech_task/view/home/widgets/bus_card.dart';
import 'package:pixel_tech_task/view/home/widgets/child_card.dart';
import 'package:pixel_tech_task/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

import '../../components/custom_title.dart';
import '../../utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = true;
  List<Widget> busCards = [
    const BusCard(),
    const BusCard(),
    const BusCard(),
    const BusCard(),
  ];



  @override
  void initState() {
    Provider.of<HomeViewModel>(context,listen: false).getStudentsData().then((_){
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 155,
        backgroundColor: Colors.transparent,
        leadingWidth: 500,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: color775, // Change the status bar color
          statusBarIconBrightness: Brightness.light, // For Android (change the status bar icon color)
          statusBarBrightness: Brightness.dark, // For iOS (change the status bar icon color)
        ),
        leading: Container(
          height: 155,
          width: getSize(context).width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/Background.webp"),fit: BoxFit.cover)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: colorF50,
                    radius: 30,
                    backgroundImage: AssetImage("assets/dummy/person.webp",),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(
                        text: "اهلا بك",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                      CustomTitle(
                        text: "محمد هاني محمد",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Image.asset("assets/icons/bell.webp",scale: 3.0,),
                  Positioned(
                    top: 5,
                    right: 2,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: colorF42,
                          borderRadius: BorderRadius.circular(100)
                        ),
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
            ...Provider.of<HomeViewModel>(context).studentData.map<Widget>((StudentInfo studentInfo) => ChildCard(studentInfo: studentInfo))
          ],
        ),
      ),
    );
  }
}
