import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    Key key,
    String title,
    PreferredSize bottom,
  })  : preferredSize = const Size.fromHeight(120),
        _title = title,
        _bottom = bottom;

  final String _title;
  final PreferredSize _bottom;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        _title,
        style: Theme.of(context).textTheme.headline2,
      ),
      backgroundColor: Colors.white,
      elevation: 30,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(30),
          left: Radius.circular(30),
        ),
      ),
      centerTitle: true,
      bottom: _bottom,
    );
  }
}
