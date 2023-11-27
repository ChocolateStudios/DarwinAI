import 'package:darwin_app/common/presentation/layout/scaffold_wrapper.dart';
import 'package:darwin_app/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DarwinAI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        final screen = _appRouter.generateRoute(settings);
        // return MaterialPageRoute(builder: (_) => ScaffoldWrapper(child: screen));
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => ScaffoldWrapper(child: screen),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
        );
      },
      // onGenerateRoute: (settings) {
      //   final screen = _appRouter.generateRoute(settings);
      //   return PageRouteBuilder(
      //     pageBuilder: (context, animation, secondaryAnimation) => ScaffoldWrapper(child: screen),
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       var begin = Offset(1.0, 0.0);
      //       var end = Offset.zero;
      //       var curve = Curves.ease;

      //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      //       return SlideTransition(
      //         position: animation.drive(tween),
      //         child: child,
      //       );
      //     },
      //   );
      // },
    );
  }
}
