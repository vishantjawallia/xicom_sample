// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../theme/palettes.dart';

class ModalProgressHUD extends StatelessWidget {
  final bool? load;
  final double? opacity;
  final Color? color;
  final Widget? progressIndicator;
  final Offset? offset;
  final bool? dismissible;
  final Widget? child;

  const ModalProgressHUD({
    Key? key,
    required this.load,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.progressIndicator = const CircularProgressIndicator(),
    this.offset,
    this.dismissible = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (!load!) return child!;

    Widget layOutProgressIndicator;
    if (offset == null) {
      layOutProgressIndicator = Center(
        child: loader(),
      );
    } else {
      layOutProgressIndicator = Positioned(
        left: offset!.dx,
        top: offset!.dy,
        child: loader(),
      );
    }

    return Stack(
      children: [
        child!,
        Opacity(
          opacity: opacity!,
          child: ModalBarrier(
            dismissible: dismissible!,
            color: color,
          ),
        ),
        layOutProgressIndicator,
      ],
    );
  }
}

Widget loader() {
  return Container(
    margin: const EdgeInsets.only(top: 36),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Palettes.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow:  [
        BoxShadow(spreadRadius: 0.2, blurRadius: 50, color: Colors.grey.shade600),
      ],
    ),
    child: const CircularProgressIndicator(
      strokeWidth: 3.8,
      color: Palettes.primary,
      backgroundColor: Palettes.white,
    ),
  );
}
