import 'package:flutter/material.dart';

class MainSubtitle extends StatelessWidget {
  const MainSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Tu asistente de confianza',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    );
  }
}
