import 'package:flutter/material.dart';
import 'package:slioion_chlange_gdsc/api_fich.dart';
import 'package:slioion_chlange_gdsc/list_view.dart';
import 'package:slioion_chlange_gdsc/home/profile.dart';
import 'package:slioion_chlange_gdsc/updates/qr_take.dart';
import 'package:slioion_chlange_gdsc/shop_profile.dart';
import 'package:slioion_chlange_gdsc/Rigst/signin.dart';
import 'package:slioion_chlange_gdsc/Rigst/sinup.dart';
import 'package:slioion_chlange_gdsc/welcom.dart';
import 'Rigst/Regest.dart';
void main() {
  Dio_helper.init();
  runApp(const MaterialApp(
       home: home(),
  ),
  );
  }
