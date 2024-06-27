import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pixel_tech_task/view/bills/bills.dart';

import '../utils/colors.dart';
import '../view/home/home.dart';
import 'custom_title.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const SizedBox(),
    const Bills(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          color: white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            selectedIndex == 0 ?  GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                  height: 65,
                  width: 130,
                  decoration: BoxDecoration(
                   gradient:  const LinearGradient(
                        colors: [
                          color0F5,
                          color9C4
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorCEB,
                                color9C4
                              ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: color775,
                              offset: Offset(-2, -2)
                            )
                          ],
                        ),
                        child: Image.asset("assets/icons/home.webp",scale: 3.0,color: white,),
                      ),
                      const SizedBox(width: 5,),
                      const CustomTitle(
                        text: "الرئيسية",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ),
              )
                :
            GestureDetector(onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },child: Image.asset("assets/icons/home.webp",scale: 3.0,color: color09E,)),
             selectedIndex == 1? GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  height: 65,
                  width: 140,
                  decoration: BoxDecoration(
                    gradient:  const LinearGradient(
                        colors: [
                          color0F5,
                          color9C4
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorCEB,
                                color9C4
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: color775,
                                offset: Offset(-2, -2)
                            )
                          ],
                        ),
                        child: Image.asset("assets/icons/message.webp",scale: 3.0,color: white,),
                      ),
                      const SizedBox(width: 5,),
                      const CustomTitle(
                        text: "المحادثة",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ) : GestureDetector(onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
             },child: Image.asset("assets/icons/message.webp",scale: 3.0,color: color09E,)),
             selectedIndex == 2? GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                  height: 65,
                  width: 130,
                  decoration: BoxDecoration(
                    gradient:  const LinearGradient(
                        colors: [
                          color0F5,
                          color9C4
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorCEB,
                                color9C4
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: color775,
                                offset: Offset(-2, -2)
                            )
                          ],
                        ),
                        child: Image.asset("assets/icons/bills.webp",scale: 3.0,color: white,),
                      ),
                      const SizedBox(width: 5,),
                      const CustomTitle(
                        text: "الفواتير",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ),
              )
                 : GestureDetector(onTap: () {
               setState(() {
                 selectedIndex = 2;
               });
             },child: Image.asset("assets/icons/bills.webp",scale: 3.0,color: color09E,)),
             selectedIndex == 3? GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                child: Container(
                  height: 65,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient:  const LinearGradient(
                        colors: [
                          color0F5,
                          color9C4
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorCEB,
                                color9C4
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: color775,
                                offset: Offset(-2, -2)
                            )
                          ],
                        ),
                        child: Image.asset("assets/icons/profile.webp",scale: 3.0,color: white,),
                      ),
                      const SizedBox(width: 5,),
                      const CustomTitle(
                        text: "الصفحة الشخصية",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ],
                  ),
                ),
              )
                 : GestureDetector(onTap: () {
               setState(() {
                 selectedIndex = 3;
               });
             },child: Image.asset("assets/icons/profile.webp",scale: 3.0,color: color09E,)),
            ],
          ),
        ),
      ),
    );
  }
}
