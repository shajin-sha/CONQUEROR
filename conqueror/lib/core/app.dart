import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:conqueror/core/helpers/init_setup.dart';
import 'package:conqueror/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providersList,
      child: InitSetup(
        child: MaterialApp(
          navigatorKey: NavigationKeys.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.appLightTheme,
          routes: Routes.roots,
          initialRoute: Paths.otp,
        ),
      ),
    );
  }
}
