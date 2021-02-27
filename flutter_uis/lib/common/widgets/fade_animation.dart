import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AniProps {
  opacity,
  translateX,
  translateY,
}

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final bool isHorizontal;

  const FadeAnimation(this.delay, {this.child, this.isHorizontal = false});

  Widget _buildVertical(BuildContext context) {
    final MultiTween<AniProps> tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, 0.0.tweenTo(1.0), 500.milliseconds)
      ..add(AniProps.translateY, (30.0).tweenTo(0.0), 500.milliseconds,
          Curves.easeOut);

    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      builder: (
        BuildContext context,
        Widget child,
        MultiTweenValues<AniProps> value,
      ) =>
          Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(
            0,
            value.get(AniProps.translateY),
          ),
          child: child,
        ),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return isHorizontal ? _buildHorizontal(context) : _buildVertical(context);
  }

  Widget _buildHorizontal(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, 0.0.tweenTo(1.0), 500.milliseconds)
      ..add(AniProps.translateX, (120.0).tweenTo(0.0), 500.milliseconds,
          Curves.easeOut);

    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(value.get(AniProps.translateX), 0), child: child),
      ),
      child: child,
    );
  }
}
