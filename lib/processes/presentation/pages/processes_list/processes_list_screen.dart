import 'dart:async';

import 'package:darwin_app/common/presentation/widgets/main_search_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class ProcessesListScreen extends StatefulWidget {
  const ProcessesListScreen({super.key});

  @override
  State<ProcessesListScreen> createState() => _ProcessesListScreenState();
}

class _ProcessesListScreenState extends State<ProcessesListScreen> {
  late StreamSubscription<html.WheelEvent> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = html.window.onMouseWheel.listen((event) {
      if (event.deltaY < 0) {
        print('Scrolling up');
        Navigator.pushReplacementNamed(context, '/');
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
          if (pointerSignal.scrollDelta.dy < 0) {
            print('CARAJO');
            Navigator.pushReplacementNamed(context, '/');
          }
        }
      },
      child: Container(
        color: Colors.white,
        child: const Center(
          child: Column(
            children: [
              Hero(tag: 'searchBar', child: Material(child: MainSearchBar())),
              Text('Lista de procesos'),
            ],
          ),
        ),
      ),
    );
  }
}
