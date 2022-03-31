import 'package:flutter/cupertino.dart';

class slides <>{
  Stack(
   children: [
    Container(
  height: 160,
  width: 200,
  decoration: BoxDecoration(
  color: Colors.red,
  borderRadius: BorderRadius.circular(25),
  ),
  ),
  Align(
  alignment: Alignment.bottomLeft,
  child: Container(
  height: 80,
  width: 200,
  decoration: BoxDecoration(
  color: Colors.blue,
  borderRadius: BorderRadius.circular(25),
  ),
  ),
  ),
  ],
  ),).toList(),
  )
}