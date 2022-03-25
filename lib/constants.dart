import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF212231);
const kBackgroundColor2 = Color(0xFF111328);
const kGreenColor = Color(0xFF1DD3B0);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(fontSize: 20.0),
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kTitleTextStyle = TextStyle(
  color: kGreenColor,
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  shadows: [
    Shadow(
      blurRadius: 7.0,
      color: Colors.white,
      offset: Offset(0, 0),
    ),
  ],
);

const kImage_url = 'https://image.tmdb.org/t/p/w500/';
