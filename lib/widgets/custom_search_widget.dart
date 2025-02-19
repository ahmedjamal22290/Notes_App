import 'dart:developer';

import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData? icon;
  final void Function()? onPressed;
  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  late Animation<Color?> _colorAnimation;
  bool _isAnimating = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _widthAnimation =
        Tween<double>(begin: 46, end: 220).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _colorAnimation = ColorTween(
            begin: Color(Colors.white.value), end: Color(Colors.purple.value))
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          height: 46,
          width: _widthAnimation.value,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: (_colorAnimation.value ?? Colors.white).withOpacity(0.1),
          ),
          child: IconButton(
            onPressed: () => _animateButton(context),
            icon: Icon(
              widget.icon,
              size: 30,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }

  void _animateButton(BuildContext context) async {
    if (_isAnimating) return; // Prevent multiple presses
    _isAnimating = true;

    await _controller.forward();
    await Future.delayed(const Duration(milliseconds: 1000));
    if (widget.icon == Icons.check) {
      widget.onPressed!.call();
      Navigator.pop(context);
    }
    _controller.reverse();

    _isAnimating = false;
    log('Tapped');
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
