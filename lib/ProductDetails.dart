import 'package:e_commerce2/shared/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Image.asset('assets/images/bigImg.jpeg'),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.star_border,color: Colors.black87,),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text('NiKe Dri-FIT Long Sleeve',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w700,color: Colors.black87),),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width:160,
                            decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[100]
                      ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [Text("Size : ",style: TextStyle(fontSize: 14),)
                                  ,Text("XXl",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey[100]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [Text("Color : ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                CircleAvatar(backgroundColor: Colors.black87,radius: 6,)],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const Text('Details',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                      const SizedBox(
                        height: 20.0,
                      ),
                     const Text(
                        'In actual fact, dri fit is a high-performance, microfiber, polyester fabric that moves sweat away from the body and to the fabric surface, where it evaporates. As a result, Dri-FIT keeps athletes dry and comfortable.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          wordSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                const [
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '\$1500',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              defaultButton(
                width: 200,
                background: Colors.green,
                text: 'ADD',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
