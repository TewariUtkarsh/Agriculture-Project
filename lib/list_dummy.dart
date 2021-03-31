import 'package:flutter/material.dart';

class items {
  final String title;
  final String category;
  items({
    this.title,
    this.category,
});
}

  List<items> loaditems() {
  var fi = <items>[
    items(
      title: "carrot",
      category: "veggies",
    ),
    items(
      title: "apple",
      category: "fruit",
    ),
    items(
      title: "banana",
      category: "fruit",
    ),
    items(
      title: "tomato",
      category: "veggies",
    ),
  ];
  return fi;
  }