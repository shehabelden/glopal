import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slioion_chlange_gdsc/api_fich.dart';
import 'package:slioion_chlange_gdsc/cubt/state.dart';
class Cubt extends Cubit<Cubt_state>{
  Cubt() : super(cubt_init());
  static Cubt get(context)=>BlocProvider.of<Cubt>(context);
  int cont=0;
  bool regster_cont=false;
  Color  sign_up_c=Colors.grey.shade600;
  Color  sign_in_c=Colors.grey.shade600;
  Color  t=Colors.redAccent.shade100;
  Color  first_f=Colors.white;
  Color  sc_f=Colors.white;
  Color  th_f=Colors.white;
  List a=[];
  regster(index){
    regster_cont=index;
    emit(emit_bar_right());
  }
  plus(index){
    cont=index++;
    emit(emit_plus());
  }
  mins(index){
    cont=index;
    emit(emit_mins());
  }
  sign_up_color(index){
    sign_up_c=index;
    emit(sign_up_color_state());
  }
  sign_in_color(index){
    sign_in_c=index;
    emit(sign_in_color_state());
  }
   First_t(index){
   if (index=true){
     first_f=t;
     sc_f=Colors.white;
     th_f=Colors.white;
     emit(First_t_state());
   }
  }
   Sc_t(index) {
     if (index = true) {
       first_f = Colors.white;
       sc_f = t;
       th_f = Colors.white;
       emit(Sc_t_state());
     }
   }
     Thr_t(index) {
       if (index = true) {
         first_f = Colors.white;
         sc_f = Colors.white;
         th_f = t;
         emit(Thr_t_state());
       }
     }
     home_api() {
         Dio_helper.getData("/2").then((value){
          a=value.data;
        });
         // print("${a}");
         emit(home_state());
     }
}
