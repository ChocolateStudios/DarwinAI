import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Darwin AI',
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
