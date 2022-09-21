import 'package:flutter/material.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({Key? key}) : super(key: key);

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite'),
    );
  }
}
