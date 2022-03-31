import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slioion_chlange_gdsc/cubt/state.dart';
import 'package:slioion_chlange_gdsc/Rigst/signin.dart';
import 'package:slioion_chlange_gdsc/Rigst/sinup.dart';

import '../cubt/cubt.dart';
class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);
  @override
  State<reg> createState() => _regState();
}
class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Cubt(),
      child: BlocConsumer<Cubt,Cubt_state>(
          builder: (context,i){
            final cubt=Cubt.get(context);
            return Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                        Row(
                          children: [
                            TextButton(onPressed: (){
                              cubt.regster(false);
                            }, child: Text("signup",style:TextStyle(
                              fontSize: 30,
                              color: cubt.sign_up_c,
                            ),)),
                           const Text("|",style: TextStyle(
                              fontSize: 30
                            )),
                            TextButton(onPressed: (){
                              cubt.regster(true);
                            }, child: Text("signin",style:TextStyle(
                              fontSize: 30,
                              color: cubt.sign_in_c,
                            ),),
                            ),
                          ],
                        ),
                    Builder(builder: (c){
                      if(cubt.regster_cont==true){
                        cubt.sign_in_color(Colors.redAccent.shade100);
                        cubt.sign_up_color(Colors.grey[600]);
                        return const signin();
                      }else{
                        cubt.sign_up_color(Colors.redAccent.shade100);
                        cubt.sign_in_color(Colors.grey[600]);
                        return sinup();
                      }
                     })
                  ],
                ),
              ),
            );
          }, listener: (BuildContext context, Object? state) {  },
        ),
    );
  }
}
