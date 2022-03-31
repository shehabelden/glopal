import 'package:flutter/material.dart';
class shop_profile extends StatefulWidget {
  const shop_profile({Key? key}) : super(key: key);

  @override
  State<shop_profile> createState() => _shop_profileState();
}

class _shop_profileState extends State<shop_profile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child:Column(
          children: [
            Row(
              children: [
              ],
            ),
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.red,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Prince Muhammed Ali Palace",style: TextStyle(fontSize: 20),),
                ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Description:",style: TextStyle(fontSize: 20),),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.price_change_outlined),
                    Text("price ",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
