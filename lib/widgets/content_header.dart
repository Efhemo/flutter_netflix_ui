import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/models/content_model.dart';
import 'package:flutter_netflix_ui/widgets/vertical_button.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({Key key, @required this.featuredContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl), fit: BoxFit.cover),
        ),
      ),
      Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
      Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl),
          )),
      Positioned(
        left: 0.0,
        right: 0.0,
        bottom: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            VerticalButton(title: "List", iconData: Icons.add, onTap: () {}),
            _PlayButton(),
            VerticalButton(
                title: "Info", iconData: Icons.info_outline, onTap: () {})
          ],
        ),
      )
    ]);
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
      color: Colors.white,
        onPressed: () {},
        icon: Icon(Icons.play_arrow),
        label: Text(
          "Play",
          style: TextStyle(fontWeight: FontWeight.w600),
        ));
  }
}
