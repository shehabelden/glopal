import 'package:flutter/material.dart';
class sinup extends StatelessWidget {
  List <String> Reg_Info=[
    "Name",
    "Email",
    "Password",
    "password2",
  ];
  sinup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left:0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 550,
                color: Colors.white,
                child: ListView.builder(
                        physics:const NeverScrollableScrollPhysics(),
                        itemCount:4,
                        itemBuilder: (c,i){
                          return Padding(
                            padding: const EdgeInsets.only(top: 40.0,left: 30,right:30 ),
                            child: TextField(
                               decoration: InputDecoration(
                                 label: Text(Reg_Info[i])
                               ),
                            ),
                          );
                        },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: InkWell(
                child:Container(
                  width: 300,
                  height: 50,
                  child:const Center(child: Text("signup")),
                  decoration: BoxDecoration(
                    color:Colors.redAccent.shade100,
                    border: Border.all(
                      color:Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onTap: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
