import 'package:flutter/material.dart';
import 'package:stateful_fun/main.dart';

class MyComponent extends StatefulWidget {
  const MyComponent({super.key});

  @override
  State<MyComponent> createState() => _MyComponentState();
}

class _MyComponentState extends State<MyComponent> {
  bool _isFavorite = false;

  void favorite(bool favorite_status) {
    setState(() {
      _isFavorite=favorite_status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Row(
        children: [
          IconButton(
            icon: _isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
            onPressed: () {
              favorite(!_isFavorite);
            },
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.blue),
            child: Text('MyComponent',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
