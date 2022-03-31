import 'package:flutter/material.dart';
class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text("Enter your mobile number ",style: TextStyle(
                color: Colors.grey[500]
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0),
                   child: Container(
                       width: 50,
                       child:const TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,)
                         ),
                       decoration: BoxDecoration(
                         border: Border.all(
                           color:Colors.grey.shade600,
                           width: .4
                         )
                       ),
                     ),
                 ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color:Colors.grey.shade600,
                          width: .4,
                      ),
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child:const TextField(
                        decoration:InputDecoration(
                          border: InputBorder.none,
                        ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Container(
                width: 340,
                height: 40,
                child:const Center(child: Text("Next")),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: .4,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0,bottom: 30.0),
              child: Text("or"),
            ),
            Container(
              width: 180,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade500,
                  width: .4
                ),
              ),
              child:const Text("Continue with Facebook "),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: Container(
                width: 180,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                   border:Border.all(
                     color:Colors.grey.shade500,
                     width:.4
                   ),
                ),
                child:const Text("Continue with google"),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
