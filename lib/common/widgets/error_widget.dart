import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {
  final dynamic error;

  const ErrWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Error: $error'));
  }
}
