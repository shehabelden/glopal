import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slioion_chlange_gdsc/cubt/cubt.dart';
import 'package:slioion_chlange_gdsc/cubt/state.dart';
class List_view extends StatelessWidget {
  const List_view({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocProvider(
        create: (context)=>Cubt(),
        child: BlocConsumer<Cubt,Cubt_state>(
        listener: (c,i){},
        builder: (context,i) {
          final cubt=Cubt.get(context);
          return Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                const  Padding(
                  padding:  EdgeInsets.only(right: 250.0),
                  child: Text("people Type ",),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(child:const Text("youth") ,onPressed: (){
                          cubt.First_t(true);
                        },style:ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(cubt.first_f),
                        ),
                        ),
                      ),
                      ElevatedButton(child:const Text("couple") ,onPressed: (){
                        cubt.Sc_t(true);
                      },style:ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(cubt.sc_f),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(child:const Text("family") ,onPressed: (){
                          cubt.Thr_t(true);
                        },style:ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(cubt.th_f),
                        )),
                      )
                    ],
                  ),
                 const Padding(
                    padding: const EdgeInsets.only(right: 200.0),
                    child: Text("NUMBER OF GUESTS"),
                  ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 40),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade400,
                                width: .6,
                            )
                        ),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,right: 20),
                        child: SizedBox(
                            width:40,
                            height:40,
                            child:TextButton(
                                onPressed: (){}, child: Text("+",
                              style:TextStyle(
                              color: Colors.pinkAccent.shade200,
                            ) ,
                            ),
                              style:ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.redAccent.shade100),
                            ) ,
                            )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextButton(onPressed: (){}, child:Text("-" ,style:TextStyle(
                                           color: Colors.pinkAccent.shade200,
                                   ) ,
                                      ),style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.redAccent.shade100),
                        ) ,
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    Padding(
                      padding:  EdgeInsets.only(right:40),
                      child: Text("price"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("location"),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0,right: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: .6
                              )
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: .6
                              )
                          ),
                        ),
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child:Container(
                    width: 320,
                      height: 60,
                      child: ElevatedButton(child:const Text("APPLY FILTERS") ,onPressed: (){},style:ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.redAccent.shade100) ,
                      ) ,)
                  ),
                ),
              ],
            ),
          );
        }
      ),
    ));
  }
}
