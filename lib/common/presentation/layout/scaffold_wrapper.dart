import 'package:darwin_app/common/presentation/layout/default_app_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWrapper extends StatelessWidget {
  final Widget child;

  const ScaffoldWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: child,
    );
  }
}
