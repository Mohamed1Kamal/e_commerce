
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../shared/component/constant.dart';

class ItemScreen extends StatelessWidget {
   ItemScreen({super.key});
  List<Color> Cls = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.yellow,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: defaultColor,
            size: 25.0,
          ),
        ),
        title: Text(
          'Product',
          style: TextStyle(color: defaultColor, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
                Icons.favorite,
              color: Colors.red,
              size: 28.0,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20.0),
          width: double.infinity,
          color: const Color(0xFFEDECF2),
          child: Column(
            children: [
              Image.asset(
                  'assets/images/1.png',
                height: 350,
              ),
           Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30.0,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50,
                    left: 18.0,
                    right: 18.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Title',
                      style: TextStyle(
                        color: defaultColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                            itemBuilder: (context, _)=>Icon(
                                Icons.favorite,
                              color: defaultColor,
                            ),
                            onRatingUpdate: (index){},
                          minRating: 1,
                          itemCount: 5,
                          initialRating: 4,
                          itemSize: 25.0,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10
                                ),
                              ]
                          ),
                          child: const Icon(
                            CupertinoIcons.plus,
                            size: 20,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "01",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF4C53A5),
                            ),

                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10
                                ),
                              ]
                          ),
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      textAlign: TextAlign.justify,
                        'This is more detailed description of the product. you can write here more about the product. this is lengthy description.',
                      style: TextStyle(
                        color: defaultColor,
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                         const Text(
                          "Size: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF4C53A5),
                          ),

                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        for(int i = 5; i <= 9 ; i++)
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10
                                ),
                              ]
                          ),
                          child:  Text(
                            "$i",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF4C53A5),
                            ),

                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Color: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF4C53A5),
                          ),

                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        for(int i = 0; i < 5 ; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 12.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Cls[i],
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10
                                  ),
                                ]
                            ),
                          ),

                      ],

                    ),
                    const SizedBox(height: 18.0,),
                  ],
                ),
              ),
            ),
                   )
        
          ],),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0.65,
        clipBehavior: Clip.hardEdge,
        child: Container(
          height: 60,
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  '120\$',
                  style: TextStyle(
                    color:defaultColor, // Ensure the text is visible
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
               const Spacer(),
                ElevatedButton.icon(
                  onPressed: () {

                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  label: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: defaultColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
