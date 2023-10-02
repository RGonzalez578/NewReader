import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('News', style: TextStyle(color: Colors.black)),
    );
  }
}
