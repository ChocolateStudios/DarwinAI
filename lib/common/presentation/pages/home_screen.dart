import 'dart:async';

import 'package:darwin_app/common/presentation/widgets/main_search_bar.dart';
import 'package:darwin_app/common/presentation/widgets/main_subtitle.dart';
import 'package:darwin_app/common/presentation/widgets/main_title.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late StreamSubscription<html.WheelEvent> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = html.window.onMouseWheel.listen((event) {
      if (event.deltaY > 0) {
        print('Scrolling down');
        Navigator.pushReplacementNamed(context, '/processeslist');
        _subscription.cancel();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (pointerSignal) {
        if (pointerSignal is PointerScrollEvent) {
          if (pointerSignal.scrollDelta.dy > 0) {
            print('CARAJO');
            Navigator.pushReplacementNamed(context, '/processeslist');
          }
        }
      },
      child: Container(
        color: Colors.white,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainTitle(),
              MainSubtitle(),
              Hero(tag: 'searchBar', child: Material(child: MainSearchBar())),
            ],
          ),
        ),
      ),
    );
  }
}
