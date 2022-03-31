import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slioion_chlange_gdsc/DropdownButton.dart';
import 'package:slioion_chlange_gdsc/cubt/cubt.dart';
import 'package:slioion_chlange_gdsc/cubt/state.dart';
class qr_taket extends StatefulWidget {
  const qr_taket({Key? key}) : super(key: key);

  @override
  State<qr_taket> createState() => _qr_taketState();
}

class _qr_taketState extends State<qr_taket> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: BlocProvider(
        create: (c)=>Cubt(),
        child: BlocConsumer<Cubt,Cubt_state>(
          listener: (c,i){},
          builder: (context,i) {
            return Padding(
              padding: const EdgeInsets.only(top: 80,right: 30,left: 30),
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Column(
                  children:[
                    Text("Prince Muhammed Ali Palace"),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 16.0),
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: .4
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Your Name"),
                              ),
                              border: InputBorder.none,
                            ),
                        ) ,
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: .4
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          label: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Your mobel phone"),
                          ),
                          border: InputBorder.none,
                        ),
                      ) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: DropdownButton(
                            items: item.map(min).toList(),
                            onChanged: (value){
                            },
                          )),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
