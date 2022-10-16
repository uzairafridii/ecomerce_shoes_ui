import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecomerce_shoes_ui/components/category_list_item.dart';
import 'package:ecomerce_shoes_ui/constants/colors.dart';
import 'package:ecomerce_shoes_ui/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  static var id = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPosition = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/menu.png",
              color: textColor,
            ),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/uzair.jpeg'),
            ),
            SizedBox(
              width: 16,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SearchBar(),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  'Categories',
                  style: styleCategoryText,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedPosition = position;
                          });
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: (selectedPosition == position)
                                ? CategoryItem(
                                    backgroundColor: textColor,
                                    text: categoryList[position],
                                    textStyle: textSelectedCategory)
                                : CategoryItem(
                                    backgroundColor: Colors.white,
                                    text: categoryList[position],
                                    textStyle: textSkipStyle,
                                  )),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: productList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 200),
                    itemBuilder: (context, position) {
                      return Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    topLeft: Radius.circular(12)),
                                color: productList[position].backgroundColor,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8, top: 6),
                                            child: Icon(
                                              (productList[position].fav ==
                                                      true)
                                                  ? Icons.favorite_border
                                                  : Icons.favorite,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    productList[position].image,
                                    width: 100,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8, top: 10, left: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productList[position].productName,
                                            style: buttonTextStyle,
                                          ),
                                          const SizedBox(
                                            height: 1,
                                          ),
                                          Text(
                                            productList[position].productPrice,
                                            style: cardText,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 18,
                                            ),
                                            Text(
                                              productList[position].rating,
                                              style: ratingText,
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          child: BottomNavyBar(
            showElevation: true,
            items: [
              BottomNavyBarItem(icon: const Icon(Icons.home), title: const Text('Home'),activeColor: Colors.red, textAlign: TextAlign.center),
              BottomNavyBarItem(icon: const Icon(Icons.favorite_border), title: const Text('Favourite'),activeColor: Colors.greenAccent, textAlign: TextAlign.center),
              BottomNavyBarItem(icon: const Icon(Icons.shopping_cart), title: const Text('Cart'),activeColor: Colors.blue, textAlign: TextAlign.center),
              BottomNavyBarItem(icon: const Icon(Icons.account_circle_rounded), title: const Text('Account'),activeColor: Colors.orangeAccent, textAlign: TextAlign.center),

            ], onItemSelected: (int value) {  },
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: CupertinoSearchTextField(
        borderRadius: BorderRadius.circular(16),
        placeholder: "Search here",
        backgroundColor: Colors.black12,
        style: textSkipStyle,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        prefixIcon: const Icon(Icons.search),
        itemSize: 22,
        itemColor: textColor,
        prefixInsets: const EdgeInsets.only(left: 8, top: 4),
      ),
    );
  }
}
