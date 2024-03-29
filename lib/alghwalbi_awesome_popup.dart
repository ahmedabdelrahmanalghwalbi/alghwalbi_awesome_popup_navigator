import 'package:flutter/material.dart';
import './src/custom_rect_tween.dart';
import './src/hero_dialog_route.dart';

class AlghwalbiAwesomePopup extends StatelessWidget {
  /// Unique String Key like [Hero] keys to linking between [shrinkedWidget] property and [expandedWidget] property.
  final String popupKey;

  /// First [Widget] that linked with second Widget[expandedWidget].
  final Widget shrinkedWidget;

  /// Second [Widget] that linked with first Widget[shrinkedWidget].
  final Widget expandedWidget;

  /// Awesome Popup Shape Border.
  final ShapeBorder? shapeBorder;

  /// Awesome Popup Border Radius that applied only on [expandedWidget].
  final BorderRadius? borderRadius;

  /// Awesome Popup Color that applied only on [expandedWidget].
  final Color? color;

  /// Awesome Popup [shrinkedWidget] tooltip.
  final String? tooltip;

  /// Awesome Popup [isScrollable] make [expandedWidget] scrollable.
  final bool? isScrollable;

  /// Awesome Popup [scrollDirection] working with [isScrollable] property to controll the direction of scrolling.
  final Axis? scrollDirection;

  const AlghwalbiAwesomePopup(
      {required this.popupKey,
      required this.expandedWidget,
      required this.shrinkedWidget,
      super.key,
      this.shapeBorder,
      this.color,
      this.isScrollable,
      this.tooltip,
      this.borderRadius,
      this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            HeroDialogRoute(
              builder: (context) => Center(
                child: Hero(
                  tag: popupKey,
                  createRectTween: (begin, end) {
                    return CustomRectTween(begin: begin!, end: end!);
                  },
                  child: Material(
                      borderRadius: borderRadius,
                      color: color,
                      shape: shapeBorder,
                      child: isScrollable == true
                          ? SingleChildScrollView(
                              scrollDirection: scrollDirection ?? Axis.vertical,
                              child: expandedWidget)
                          : expandedWidget),
                ),
              ),
            ),
          );
        },
        child: Hero(
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin!, end: end!);
          },
          tag: popupKey,
          child: Material(
              borderRadius: borderRadius,
              color: color,
              shape: shapeBorder,
              child: shrinkedWidget),
        ),
      ),
    );
  }
}
