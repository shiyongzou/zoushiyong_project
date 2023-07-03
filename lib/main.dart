import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:zsy_cli/router.dart';
import 'package:zsy_cli/store/homedata.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeConfig>.value(
        value: HomeConfig(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        themes: [
          AppTheme.light(),
          AppTheme.dark(),
          AppTheme(
            id: "custom_theme",
            description: "My Custom Theme",
            data: ThemeData(
              primaryColor: Colors.black,
              colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: Colors.blue,
              ),
            ),
          ),
        ],
        child: ThemeConsumer(
            child: Builder(
                builder: (themeContext) => ScreenUtilInit(
                    minTextAdapt: true,
                    splitScreenMode: true,
                    builder: (context, child) {
                      return MaterialApp.router(
                        title: '应用程序demo',
                        routerConfig: router,
                        theme: ThemeProvider.themeOf(themeContext).data,
                      );
                    }))));
  }
}
