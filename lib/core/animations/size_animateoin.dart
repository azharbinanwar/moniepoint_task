import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  final Widget child;
  final double? minHeight;
  final double? maxHeight;
  final double? minWidth;
  final double? maxWidth;
  final Duration duration;
  final Curve curve;
  final Duration playAfter;

  const SizeAnimation({
    super.key,
    required this.child,
    this.minHeight,
    this.maxHeight,
    this.minWidth,
    this.maxWidth,
    this.duration = const Duration(seconds: 2),
    this.curve = Curves.easeInOut,
    this.playAfter = Duration.zero,
  });

  @override
  State<SizeAnimation> createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _heightAnimation;
  late final Animation<double> _widthAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    _heightAnimation = Tween<double>(
      begin: widget.minHeight ?? 0.0,
      end: widget.maxHeight ?? 0.0,
    ).animate(_controller);

    _widthAnimation = Tween<double>(
      begin: widget.minWidth ?? 0.0,
      end: widget.maxWidth ?? 0.0,
    ).animate(_controller);

    Future.delayed(widget.playAfter, () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _heightAnimation,
      builder: (context, child) => SizedBox(
        height: _heightAnimation.value,
        width: _widthAnimation.value.clamp(
          widget.minWidth ?? 0.0, // Ensure width stays within min/max
          widget.maxWidth ?? double.infinity,
        ),
        child: child,
      ),
      child: widget.child,
    );
  }
}
