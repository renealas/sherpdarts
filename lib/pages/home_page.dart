import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sherp_darts/widgets/select_score_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SherpDarts'),
      ),
      body: TextButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return SelectSCoreView();
            },
          );
        },
        child: Text('show'),
      ),
    );
  }
}
