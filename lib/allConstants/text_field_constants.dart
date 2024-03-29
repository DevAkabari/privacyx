import 'package:flutter/material.dart';
import 'package:privacyx/allConstants/size_constants.dart';

const kTextInputDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  hintStyle:
      TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_10)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.5),
    borderRadius: BorderRadius.all(
      Radius.circular(Sizes.dimen_10),
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.5),
    borderRadius: BorderRadius.all(
      Radius.circular(Sizes.dimen_10),
    ),
  ),
);

const Widget vertical5 = SizedBox(height: 5.0);
const Widget vertical10 = SizedBox(height: 10.0);
const Widget vertical15 = SizedBox(height: 15.0);
const Widget vertical20 = SizedBox(height: 20.0);

const Widget vertical25 = SizedBox(height: 25.0);
const Widget vertical30 = SizedBox(height: 30.0);

const Widget vertical50 = SizedBox(height: 50.0);
const Widget vertical120 = SizedBox(height: 120.0);
