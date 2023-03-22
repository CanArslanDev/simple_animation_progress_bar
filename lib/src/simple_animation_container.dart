import 'package:flutter/cupertino.dart';

class SimpleAnimationProgressBar extends StatefulWidget {
  const SimpleAnimationProgressBar(
      {super.key,
      required this.ratio,
      required this.width,
      required this.height,
      required this.direction,
      this.borderRadius,
      this.border,
      required this.backgroundColor,
      required this.foregrondColor,
      required this.duration,
      required this.curve,
      this.reverseAlignment,
      this.waitDelay,
      this.gradientColor});
  final double ratio;
  final double width;
  final double height;
  final Axis direction;
  final BorderRadius? borderRadius;
  final Border? border;
  final Color backgroundColor;
  final Color foregrondColor;
  final Duration duration;
  final Curve curve;
  final bool? reverseAlignment;
  final Duration? waitDelay;
  final Gradient? gradientColor;
  @override
  State<SimpleAnimationProgressBar> createState() =>
      _SimpleAnimationProgressBarState();
}

class _SimpleAnimationProgressBarState
    extends State<SimpleAnimationProgressBar> {
  double ratio = 0;
  @override
  Widget build(BuildContext context) {
    if (ratio == 0) {
      Future.delayed(
          (widget.waitDelay != null) ? widget.waitDelay! : const Duration(),
          () {
        setState(() {
          ratio = widget.ratio;
        });
      });
    } else if (ratio != widget.ratio) {
      Future.delayed(
          (widget.waitDelay != null) ? widget.waitDelay! : const Duration(),
          () {
        setState(() {
          ratio = widget.ratio;
        });
      });
    }
    return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          border: widget.border,
          borderRadius: widget.borderRadius,
        ),
        child: (widget.direction == Axis.horizontal)
            ? horizontalBar()
            : verticalBar());
  }

  horizontalBar() {
    return Row(
      mainAxisAlignment: (widget.reverseAlignment == true)
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: widget.duration,
          curve: widget.curve,
          alignment: Alignment.centerLeft,
          height: widget.height,
          width: (ratio * widget.width) / 1,
          decoration: BoxDecoration(
            gradient:
                (widget.gradientColor != null) ? widget.gradientColor : null,
            color:
                (widget.gradientColor != null) ? null : widget.foregrondColor,
            borderRadius: widget.borderRadius,
          ),
        ),
      ],
    );
  }

  verticalBar() {
    return Row(
      crossAxisAlignment: (widget.reverseAlignment == true)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        AnimatedContainer(
          duration: widget.duration,
          curve: widget.curve,
          alignment: Alignment.centerLeft,
          height: (ratio * widget.height) / 1,
          width: widget.width,
          decoration: BoxDecoration(
            gradient:
                (widget.gradientColor != null) ? widget.gradientColor : null,
            color:
                (widget.gradientColor != null) ? null : widget.foregrondColor,
            borderRadius: widget.borderRadius,
          ),
        ),
      ],
    );
  }
}