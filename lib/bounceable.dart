import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bounceable extends StatefulWidget {
  /// Set it to `null` to disable `onTap`.
  final VoidCallback? onTap;
  final void Function(TapUpDetails)? onTapUp;
  final void Function(TapDownDetails)? onTapDown;
  final VoidCallback? onTapCancel;

  /// The reverse duration of the scaling animation when `onTapUp`.
  final Duration? duration;

  /// The duration of the scaling animation when `onTapDown`.

  /// The reverse curve of the scaling animation when `onTapUp`.
  final Curve curve;
  final Curve reverseCurve;
  /// The curve of the scaling animation when `onTapDown`..

  /// The scale factor of the child widget. The valid range of `scaleFactor` is from `0.0` to `1.0`.
  final double scaleFactor;

  final Widget child;

  const Bounceable({
    Key? key,
    required this.onTap,
    required this.child,
    this.onTapUp,
    this.onTapDown,
    this.onTapCancel,
    this.duration = const Duration(milliseconds: 70),
    this.curve = Curves.easeIn,
    this.reverseCurve = Curves.easeIn,
    this.scaleFactor = 0.95,
  })  : assert(
  scaleFactor >= 0.0 && scaleFactor <= 1.0,
  "The valid range of scaleFactor is from 0.0 to 1.0.",
  ),
        super(key: key);

  @override
  _BounceableState createState() => _BounceableState();
}

class _BounceableState extends State<Bounceable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
    reverseDuration: widget.duration,
    value: 1.0,
    upperBound: 1.0,
    lowerBound: widget.scaleFactor,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: widget.curve,
    reverseCurve: widget.reverseCurve,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  void _onTap() {
    if (widget.onTap != null) widget.onTap!();

    _controller.reverse().then((_) {
      _controller.forward();
    });
  }

  void _onTapUp(TapUpDetails details) {
    if (widget.onTapUp != null) widget.onTapUp!(details);
    _controller.forward();
  }

  void _onTapDown(TapDownDetails details) {
    if (widget.onTapDown != null) widget.onTapDown!(details);
    _controller.reverse();
  }

  void _onTapCancel() {
    if (widget.onTapCancel != null) widget.onTapCancel!();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapCancel: widget.onTap != null ? _onTapCancel : null,
        onTapDown: widget.onTap != null ? _onTapDown : null,
        onTapUp: widget.onTap != null ? _onTapUp : null,
        onTap: widget.onTap != null ? _onTap : null,
        child: ScaleTransition(
          scale: _animation,
          child: widget.child,
        ),
      ),
    );
  }
}