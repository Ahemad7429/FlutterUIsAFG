import 'package:flutter/material.dart';
import 'package:flutter_uis/common/assets/inspiration_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      brightness: Brightness.light,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(244, 243, 243, 1),
          borderRadius: BorderRadius.circular(15)),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          hintText: "Search you're looking for",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget _buildPromoCard(String image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
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
              begin: Alignment.bottomRight,
              stops: const <double>[0.1, 0.9],
              colors: <Color>[
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Find Your',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Inspiration',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildSearchField(),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Promo Today',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildPromoCard(AppInspirationAssets.one),
                          _buildPromoCard(AppInspirationAssets.two),
                          _buildPromoCard(AppInspirationAssets.three),
                          _buildPromoCard(AppInspirationAssets.four),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(AppInspirationAssets.three),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const <double>[0.3, 0.9],
                            colors: <Color>[
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
