
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Presentation/Widgets/Auth/splash_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'HBK BLANKET',
            theme: ThemeData(
              primaryColor: AppColors.primaryColor
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
            ),
            home: const SplashScreen(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
