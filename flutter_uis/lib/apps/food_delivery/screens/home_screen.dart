import 'package:flutter/material.dart';
import 'package:flutter_uis/common/assets/food_delivery_assets.dart';
import 'package:flutter_uis/common/widgets/fade_animation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[100],
      elevation: 0,
      leading: const Icon(null),
      brightness: Brightness.light,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.grey[800],
          ),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildCategory({bool isActive, String title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 18,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItems(String image) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: const <double>[0.2, 0.9],
                colors: <Color>[
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        '\$ 15.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Vegiterian Pizza',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    isHorizontal: true,
                    child: Text(
                      'Food Delivery',
                      style: TextStyle(
                        color: Colors.grey[80],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                          1,
                          isHorizontal: true,
                          child: _buildCategory(
                            isActive: true,
                            title: 'Pizza',
                          ),
                        ),
                        FadeAnimation(
                          1.3,
                          isHorizontal: true,
                          child: _buildCategory(
                            isActive: false,
                            title: 'Burger',
                          ),
                        ),
                        FadeAnimation(
                          1.4,
                          isHorizontal: true,
                          child: _buildCategory(
                            isActive: false,
                            title: 'Kebab',
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          isHorizontal: true,
                          child: _buildCategory(
                            isActive: false,
                            title: 'Desert',
                          ),
                        ),
                        FadeAnimation(
                          1.6,
                          isHorizontal: true,
                          child: _buildCategory(
                            isActive: false,
                            title: 'Salad',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
            FadeAnimation(1,
                isHorizontal: true,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Free Delivery',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(
                      1.4,
                      isHorizontal: true,
                      child: _buildItems(
                        AppFoodDeliveryAssets.one,
                      ),
                    ),
                    FadeAnimation(
                      1.5,
                      isHorizontal: true,
                      child: _buildItems(
                        AppFoodDeliveryAssets.two,
                      ),
                    ),
                    FadeAnimation(
                      1.6,
                      isHorizontal: true,
                      child: _buildItems(
                        AppFoodDeliveryAssets.three,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
