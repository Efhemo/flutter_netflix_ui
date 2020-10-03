import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contents;

  const Previews({Key key, this.title, this.contents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 24.0),
          Container(
            height: 165.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                itemCount: contents.length,
                itemBuilder: (BuildContext context, int index) {
                  final content = contents[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(content.imageUrl),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: content.color, width: 4.0)),
                        ),
                        Positioned(
                          left: 0.0,
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.center
                              )
                            ),
                            child: SizedBox(
                              child: Image.asset(content.titleImageUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
