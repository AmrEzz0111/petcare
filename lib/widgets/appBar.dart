import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final double evaluation;
  final String title;
  final List<Widget> actions;
  final Widget leading;

  const AppBarWidget(
      {Key key, this.evaluation, this.title, this.actions, this.leading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: evaluation,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'coRegular',
            fontSize: 24,
          ),
        ),
        leading: leading != null ? leading : Container(),
        actions: actions);
  }
}
