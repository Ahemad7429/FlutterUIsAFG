import 'package:flutter/material.dart';
import 'package:flutter_uis/common/assets/trip_assets.dart';
import 'package:flutter_uis/common/helper/utility_helper.dart';
import 'package:flutter_uis/common/widgets/fade_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  final int _totalPage = 4;

  void _onScroll() {
    UtilityHelper.instance.showLog('Scrolled');
  }

  @override
  void initState() {
    _pageController = PageController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildPage({
    String title,
    String description,
    String image,
    int page,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const <double>[0.3, 0.9],
            colors: <Color>[
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  FadeAnimation(
                    2,
                    child: Text(
                      page.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '/$_totalPage',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      1.0,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 50,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeAnimation(
                      1.5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          const Text(
                            '4.0',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          const Text(
                            '(2300)',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeAnimation(
                      2.0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FadeAnimation(
                      2.5,
                      child: Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          _buildPage(
              page: 1,
              title: 'Yosemite National Park',
              description:
                  // ignore: lines_longer_than_80_chars
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.',
              image: AppTripAssets.one),
          _buildPage(
              page: 2,
              title: 'Golden Gate Bridge',
              description:
                  // ignore: lines_longer_than_80_chars
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
              image: AppTripAssets.two),
          _buildPage(
              page: 3,
              title: 'Sedona',
              description:
                  // ignore: lines_longer_than_80_chars
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
              image: AppTripAssets.three),
          _buildPage(
              page: 4,
              title: 'Savannah',
              description:
                  // ignore: lines_longer_than_80_chars
                  'Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.',
              image: AppTripAssets.four),
        ],
      ),
    );
  }
}
