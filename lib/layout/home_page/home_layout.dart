import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../modules/cart_screen/CartScreen.dart';
import '../../modules/item_screen/item_screen.dart';
import '../../shared/component/constant.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
      'assets/images/4.png',
      'assets/images/5.png',
      'assets/images/6.png',
      'assets/images/7.png',
    ];
    final List<String> imageNameList = [
      'Nike Shoe',
      'Watch',
      'HandBag',
      'Nike Shoe',
      'Sandal',
      'Sport Shoe',
      'Nike Shoe'
    ];
    int navBottomIndex = 1;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              color: const Color(0xFF4C53A5),
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
              ),
            ),
            const Text(
              'DP Shop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color(0xFF4C53A5),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Badge(
              backgroundColor: Colors.red,
              label: const Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 32,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              )),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              border: InputBorder.none,
                              hintText: 'Search here....'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.camera_alt,
                          color: Color(0xFF4C53A5),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: defaultColor,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                //Categories Bar
                Container(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return IntrinsicWidth(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.0),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Image.asset(
                                  imageList[index],
                                  width: 40,
                                  height: 40,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  imageNameList[index],
                                  style: TextStyle(
                                      color: defaultColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0),
                                ),
                              ],
                            )),
                      );
                    },
                    itemCount: imageList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 15.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                 Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: defaultColor
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //Items ********************************************************
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 0.58,
                    //physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for(int i = 0; i < imageNameList.length; i++)
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                              builder: (context)=> ItemScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white
                          ),
                          child: Column(
                           // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: defaultColor
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(
                                          '-50%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 120.0,
                                width: 120.0,
                                child: Image.asset(
                                 imageList[i]
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  imageNameList[i],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: defaultColor
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Write description of product',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: defaultColor
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "\$55",
                                        style: TextStyle(
                                            color:defaultColor,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                     Icon(
                                      Icons.shopping_cart_checkout,
                                      color:defaultColor
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index){
          if(index == 0){
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context)=> CartScreen()),
                  (route) => false,
            );
          }
          else{
            print("Menu screen");
          }
        },
        index: navBottomIndex,
        color: defaultColor,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ],

      ),
    );
  }
}
