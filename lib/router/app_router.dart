import 'package:darwin_app/common/presentation/pages/error_screen.dart';
import 'package:darwin_app/common/presentation/pages/home_screen.dart';
import 'package:darwin_app/processes/presentation/pages/processes_list/processes_list_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Widget generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return const HomeScreen();
      case '/processeslist':
        return const ProcessesListScreen();
      default:
        return const ErrorScreen();
    }
  }
}
