import 'package:flutter/material.dart';
import 'package:slioion_chlange_gdsc/Rigst/signin.dart';
import 'package:slioion_chlange_gdsc/Rigst/sinup.dart';
class welcom extends StatefulWidget {
  const welcom({Key? key}) : super(key: key);

  @override
  State<welcom> createState() => _welcomState();
}

class _welcomState extends State<welcom> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child:const Text("Yala bena",style: TextStyle(
                      color:Colors.white,
                      fontSize: 40
                    ),),
                ),
            Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text("Welcome to the New World",style: TextStyle(
                              color: Colors.grey[500],
                              fontFamily:"Bold",
                              fontSize: 30,
                            )),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                width: 300,
                                child: Text("here you can find all what you wantabout hanging out ",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily:"Bold" ,
                                    fontSize: 20
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                 ),
            Expanded(child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color:Colors.redAccent.shade100,
                          border: Border.all(
                            width: .4,
                          ),
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30)
                          )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(child:const Text("Signin",style:TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ) ,), onTap: (){},),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color:Colors.redAccent.shade100,
                          border: Border.all(
                            width: .4,
                          ),
                          borderRadius:const BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight:Radius.circular(30),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(onTap:(){},
                          child: const Center(
                            child: Text("Signup",style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),)
                        ),),
                      )),
                ),
              ],
            ),
            ),

          ])
      ),
    );
  }
}
