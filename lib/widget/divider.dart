import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyDivider() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Divider(
      thickness: 2,
      height: 10,
      color: Colors.grey,
    ),
  );
}