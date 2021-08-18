import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sherp_darts/models/dart.dart';

class SelectSCoreView extends StatefulWidget {
  const SelectSCoreView({Key? key}) : super(key: key);

  @override
  _SelectSCoreViewState createState() => _SelectSCoreViewState();
}

class _SelectSCoreViewState extends State<SelectSCoreView> {
  final List<Shot> _shots = [
    Shot(pie: 1),
    Shot(pie: 2),
    Shot(pie: 3),
    Shot(pie: 4),
    Shot(pie: 5),
    Shot(pie: 6),
    Shot(pie: 7),
    Shot(pie: 8),
    Shot(pie: 9),
    Shot(pie: 10),
    Shot(pie: 11),
    Shot(pie: 12),
    Shot(pie: 13),
    Shot(pie: 14),
    Shot(pie: 15),
    Shot(pie: 16),
    Shot(pie: 17),
    Shot(pie: 18),
    Shot(pie: 19),
    Shot(pie: 20),
    Shot(pie: 25),
    Shot(pie: 50),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      color: Colors.grey.shade700,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.green,
                ),
              )
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: _shots.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (BuildContext context, int index) {
                final Shot shot = _shots.elementAt(index);
                return GestureDetector(
                  onTap: () {
                    print('hola $index');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 1.5,
                      ),
                    ),
                    child: Text(shot.pie.toString()),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
