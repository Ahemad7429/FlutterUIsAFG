import 'package:flutter/material.dart';
import 'package:flutter_uis/common/assets/actor_profile_assets.dart';
import 'package:flutter_uis/common/widgets/fade_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildVideoCard(String image) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
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
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: const Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppActorProfileAssets.emma),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const FadeAnimation(
                              1,
                              child: Text(
                                'Emma Watson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: const [
                                FadeAnimation(
                                  1.2,
                                  child: Text(
                                    '60 Videos',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                  1.3,
                                  child: Text(
                                    '240K Subscribers',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
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
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const FadeAnimation(
                            1.6,
                            child: Text(
                              // ignore: lines_longer_than_80_chars
                              'Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.',
                              style: TextStyle(
                                color: Colors.grey,
                                height: 1.4,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          const FadeAnimation(
                            1.6,
                            child: Text(
                              'Born',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const FadeAnimation(
                            1.6,
                            child: Text(
                              'April, 15th 1990, Paris, France',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const FadeAnimation(
                            1.6,
                            child: Text(
                              "Nationality",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const FadeAnimation(1.6,
                              child: Text(
                                "British",
                                style: TextStyle(color: Colors.grey),
                              )),
                          const SizedBox(height: 20),
                          const FadeAnimation(
                            1.6,
                            child: Text(
                              "Videos",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          FadeAnimation(
                            1.8,
                            child: SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  _buildVideoCard(AppActorProfileAssets.emma1),
                                  _buildVideoCard(AppActorProfileAssets.emma2),
                                  _buildVideoCard(AppActorProfileAssets.emma3),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Align(
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
