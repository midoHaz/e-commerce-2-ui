import 'package:e_commerce2/shared/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,right: 10.0,left: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.search_rounded),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                    )
                  ),
                ),
               const SizedBox(
                  height: 35.0,
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: const [
                   Text('Categories',style: TextStyle(fontSize: 22.0,fontWeight:FontWeight.w700,),textAlign: TextAlign.start,),
                 ],
               ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 100.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white,radius: 35.0,child:Image.asset('assets/images/men.png',width: 40.0,height: 40.0,),),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text("Men"),
                        ],
                      ),
                      const SizedBox(width: 12.0,),
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white,radius: 35.0,child:Image.asset('assets/images/women.jpeg',width: 40.0,height: 40.0,),),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text("Women"),
                        ],
                      ),
                      const SizedBox(width: 12.0,),
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white,radius: 35.0,child:Image.asset('assets/images/devices.png',width: 40.0,height: 40.0,),),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text("Devices"),
                        ],
                      ),
                      const SizedBox(width: 12.0,),
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white,radius: 35.0,child:Image.asset('assets/images/gadgets.png',width: 40.0,height: 40.0,),foregroundColor: Colors.black87,),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text("Gadgets"),
                        ],
                      ),
                      const SizedBox(width: 12.0,),
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.white,radius: 35.0,child:Image.asset('assets/images/games.jpeg',width: 40.0,height: 40.0,),),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text("Games"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Best selling",
                      style: TextStyle(

                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style:
                      TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 600,
                  padding: const EdgeInsetsDirectional.all(15),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/beoplay.jpeg',fit: BoxFit.cover,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("BeoPlay Speaker",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("Bang and Olulean",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$755",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/watch1.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Smart Watch",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("Brand",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$420",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/menshoe.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Beautiful shoes",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("many brands",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$300",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/woshoe.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("heels",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("amazing branches",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$500",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/shirt.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Men Shirts",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("zara and adidas",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$200",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/wshirt.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Women shirts",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("zara and other branch",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$255",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/ps5.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Ps5",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("controllers and cds",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$1500",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                    children:[ Image.asset('assets/images/tvs.jpeg',fit: BoxFit.cover,height: 320,),
                                      PhotoShadowStyle(),
                                    ]) ,
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text("Smart tvs",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                const Text("LG and Toshiba and Fresh",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text("\$999.9",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
             [
              Column(
                children: const [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6.0,),
                  CircleAvatar(backgroundColor: Colors.green,radius: 3,)
                ],
              ),
              const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
                size: 20,
              ),
              const Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
