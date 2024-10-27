import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredGridTile> _cardTile = [
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.red,
      iconData: CupertinoIcons.home,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: BackGroundTile(
      backgroundColor: Colors.orange,
      iconData: CupertinoIcons.settings,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.pink,
      iconData: CupertinoIcons.search,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: BackGroundTile(
      backgroundColor: Colors.green,
      iconData: CupertinoIcons.cart,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.deepPurpleAccent,
      iconData: CupertinoIcons.music_mic,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.blue,
      iconData: CupertinoIcons.alarm,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.amber,
      iconData: CupertinoIcons.music_note_2,
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.cyan,
      iconData: CupertinoIcons.mic_slash_fill,
    ),
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridView Example',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _cardTile,
          ),
        ),
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData iconData;
  const BackGroundTile({
    super.key,
    required this.backgroundColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Center(
        // Center the icon in the card
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
