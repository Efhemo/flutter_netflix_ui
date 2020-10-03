import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/data/data.dart';
import 'package:flutter_netflix_ui/widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CustomAppBar(scrollOffset: _scrollOffset),
          preferredSize: Size(size.width, 50)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
        onPressed: () {},
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: ContentHeader(featuredContent: sintelContent)),
          SliverToBoxAdapter(
              child: Previews(title: "Previews", contents: previews)),
          SliverToBoxAdapter(child: ContentList(title: "My List", contents: myList),),
          SliverToBoxAdapter(child: ContentList(title: "Netflix Original", contents: originals, isOriginal: true)),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 15.0),
              sliver: SliverToBoxAdapter(child: ContentList(title: "Trending", contents: trending))),
        ],
      ),
    );
  }
}
