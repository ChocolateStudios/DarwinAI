import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Darwin AI',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
