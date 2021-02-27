import 'package:flutter/material.dart';
import 'package:flutter_uis/apps/food_delivery/screens/home_screen.dart';
import 'package:flutter_uis/common/assets/food_delivery_assets.dart';
import 'package:flutter_uis/common/widgets/fade_animation.dart';
import 'package:page_transition/page_transition.dart';

class StarterScreen extends StatefulWidget {
  @override
  _StarterScreenState createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });
    _animationController.forward().then(
          (_) => Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              child: HomeScreen(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppFoodDeliveryAssets.starterImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const FadeAnimation(
                  .5,
                  isHorizontal: true,
                  child: Text(
                    'Taking Order For Faster Delivery',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const FadeAnimation(
                  1,
                  isHorizontal: true,
                  child: Text(
                    'See resturants nearby by \nadding location',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.4,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                FadeAnimation(
                  1.2,
                  isHorizontal: true,
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Colors.yellow,
                            Colors.orange,
                          ],
                        ),
                      ),
                      child: AnimatedOpacity(
                        opacity: _textVisible ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 50),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: _onTap,
                          child: const Text(
                            'START',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                FadeAnimation(
                  1.4,
                  isHorizontal: true,
                  child: AnimatedOpacity(
                    opacity: _textVisible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 50),
                    child: const Align(
                      child: Text(
                        'Now Deliver To Your Door 24/7',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
