import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/models/content_model.dart';

class ContentList extends StatelessWidget {
  final String title;
  final bool isOriginal;
  final List<Content> contents;

  const ContentList(
      {Key key,
      @required this.title,
      this.isOriginal = false,
      @required this.contents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
        ),
        Container(
          height: isOriginal ? 500 : 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            itemCount: contents.length,
            itemBuilder: (context, index) {
              final content = contents[index];
              return GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  height: isOriginal ? 400.0 : 200.0,
                  width: isOriginal ? 200.0 : 130.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(content.imageUrl), fit: BoxFit.cover)
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
