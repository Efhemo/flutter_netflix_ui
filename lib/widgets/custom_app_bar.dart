import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            SizedBox(width: 24.0),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: "TV Shows", onTap: () {}),
                _AppBarButton(title: "TV Shows", onTap: () {}),
                _AppBarButton(title: "TV Shows", onTap: () {})
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({Key key, @required this.title, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16.0),
        ),
        onTap: onTap,
      ),
    );
  }
}
