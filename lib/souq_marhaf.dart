import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'generated/l10n.dart';


class SouqMarhaf extends StatelessWidget {
  const SouqMarhaf({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(572, 1190),
        minTextAdapt: true,
        child: MaterialApp(
          locale: const Locale('ar'),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'SouqMarhaf',
          theme: ThemeData(
            fontFamily: "29LTBukra",
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),);
  }
}
