import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
class Dio_helper{
  static late Dio dio;
  static init(){
  dio=Dio(BaseOptions(
        baseUrl: "http://192.168.1.105:8000/2",
        receiveDataWhenStatusError: true,
      ));

  }
  static Future <Response>getData(String s)async{
         return await dio.get(s);
}
}