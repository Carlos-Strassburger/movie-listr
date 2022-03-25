import 'package:flutter/material.dart';

import '../constants.dart';

final PreferredSizeWidget appBar = AppBar(
  toolbarHeight: 60,
  toolbarOpacity: 1,
  bottomOpacity: 0,
  backgroundColor: kBackgroundColor,
  title: Center(
    child: Text(
      'MOVIE LISTR',
      style: kTitleTextStyle.copyWith(color: kGreenColor, fontSize: 35.0),
    ),
  ),
  elevation: 0,
  leading: IconButton(
    alignment: Alignment.topLeft,
    icon: const Icon(
      Icons.menu,
      color: kGreenColor,
    ),
    splashRadius: 25,
    iconSize: 40.0,
    color: kBackgroundColor,
    onPressed: () {},
  ),
  actions: [
    IconButton(
      icon: const Icon(
        Icons.search,
        color: kGreenColor,
      ),
      splashRadius: 25,
      iconSize: 40.0,
      color: kBackgroundColor,
      onPressed: () {},
    ),
  ],
);
