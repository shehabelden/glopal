import 'package:flutter/material.dart';

List <String> item=["1","2","3"];
DropdownMenuItem<String> min(String item)=>DropdownMenuItem(
  value: item, child: Text(item),
);