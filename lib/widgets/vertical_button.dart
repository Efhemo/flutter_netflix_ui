import 'package:flutter/material.dart';

class VerticalButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;

  const VerticalButton({Key key, @required this.title, @required this.iconData, @required this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(iconData, color: Colors.white),
          SizedBox(height: 4.0),
          Text(title, style: TextStyle(color: Colors.white))
        ],
      ),
      onTap: onTap,
    );
  }
}
