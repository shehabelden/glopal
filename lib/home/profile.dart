import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slioion_chlange_gdsc/cubt/cubt.dart';
import 'package:slioion_chlange_gdsc/cubt/state.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _home();
}
class _home extends State<home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: BlocProvider(
        create: (c)=>Cubt(),
        child:BlocConsumer<Cubt,Cubt_state>(
              listener: (c,i){},
              builder: (c,i) {
                Cubt cubt=Cubt.get(c);
                cubt.home_api();
                return Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               const Padding(
                                  padding:  EdgeInsets.only(right: 200.0,bottom: 10),
                                  child: InkWell(
                                      child: Icon(Icons.list,size: 40,)),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black54,
                                       child: Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(50)
                                         ),
                                          height: 38,
                                         width: 38,
                                       ),
                                   ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    height: 40,
                                    width: 270,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.grey.shade400)
                                    ),
                                    child:const TextField(
                                      decoration: InputDecoration(
                                        prefixIcon:Icon(Icons.search_outlined),
                                        border:InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:Colors.black ,
                                          width: .4
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                      child:const InkWell(
                                        child: Text("Filter"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:230.0,top: 25),
                            child: Container(child:const Text("upload a place photo ")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 230.0,top: 16),
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: .8,
                                ),
                              ),
                              child: InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  child:const Icon(Icons.camera_alt_outlined),
                                ),
                              ),
                            ),
                          ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0,bottom: 20),
                                  child: Text("new offers ",style: TextStyle(
                                    fontSize: 18,
                                  ),),
                                ),
                              )
                              ),
                            Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 180,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: CarouselSlider.builder(
                                  options: CarouselOptions(height: 200,
                                    enlargeCenterPage: true,
                                    aspectRatio: 2.0,
                                    // viewportFraction: 2,
                                  ),
                                  itemCount: cubt.a.length,
                                  itemBuilder: (c,int i,r){
                                      return SizedBox(
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(25.0),
                                              child: Container(
                                                  padding: EdgeInsets.all(0),
                                                  width: 300,
                                                  child: Image.network(cubt.a[i]["image"],fit: BoxFit.cover,width:300 ,)),

                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                 height: 70,
                                                 decoration: BoxDecoration(
                                                     color:Colors.white,
                                                     borderRadius: BorderRadius.circular(25)
                                                 ),
                                                  padding: EdgeInsets.only(left:10,right: 10),
                                                  width: 290,
                                                  child: Text(cubt.a[i]["pio"],)),
                                            )
                                          ],
                                        ),
                                      );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,top: 20,bottom: 20),
                              child: Text("upcoming events ",style: TextStyle(
                                fontSize: 20,
                              ),),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child:CarouselSlider.builder(options: CarouselOptions(height: 200,
                            enlargeCenterPage: true,
                            aspectRatio: 2.0,
                         // viewportFraction: 2,
                            ),
                            itemCount: cubt.a.length,
                        itemBuilder: (c,int i,r){
                           return SizedBox(
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(25.0),
                               child: Container(
                                   padding: EdgeInsets.all(0),
                                   width: 300,
                                   child: Image.network(cubt.a[i]["image"],fit: BoxFit.cover,width:300 ,)),
                             ),

                           );
                            }
                           ),
                                ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("name1",style: TextStyle(fontSize: 20)),
                                Text("name2",style: TextStyle(fontSize: 20),),
                              ],
                            ),
                        ]
                              )
                            ),
                          );
              }
            ),
      ),
    );
  }
}
