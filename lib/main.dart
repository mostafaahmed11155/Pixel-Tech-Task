import 'package:flutter/material.dart';
import 'package:pixel_tech_task/view/home/home.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/nav_bar.dart';
import 'utils/colors.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixel Tech Task',
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      theme: ThemeData(
        fontFamily: cairo,
        useMaterial3: true,
        scaffoldBackgroundColor: white,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, background: white, surfaceTint: white),
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: 'MOBILE'),
          const ResponsiveBreakpoint.autoScale(450, name: 'MOBILE'),
          const ResponsiveBreakpoint.autoScale(800, name: 'TABLET'),
          const ResponsiveBreakpoint.autoScale(1000, name: 'TABLET'),
          const ResponsiveBreakpoint.resize(1200, name: 'DESKTOP'),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      home: const NavBar(),
    );
  }
}
