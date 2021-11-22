import 'package:daobao/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class TransparentButton extends StatefulWidget {
  const TransparentButton(
      {Key? key, this.child, this.end = 0.7, this.onPressed})
      : super(key: key);

  final double end;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  State<TransparentButton> createState() => _TransparentButtonState();
}

class _TransparentButtonState extends State<TransparentButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: hovering ? widget.end : 1,
      child: MouseRegion(
        onEnter: (_) => setState(() => hovering = true),
        onExit: (_) => setState(() => hovering = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}

class TransparentTextButton extends StatefulWidget {
  const TransparentTextButton({
    Key? key,
    this.end = 0.7,
    this.onPressed,
    required this.text,
    this.style,
  }) : super(key: key);

  final double end;
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? style;

  @override
  State<TransparentTextButton> createState() => _TransparentTextButtonState();
}

class _TransparentTextButtonState extends State<TransparentTextButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: hovering ? widget.end : 1,
      child: MouseRegion(
        onEnter: (_) => setState(() => hovering = true),
        onExit: (_) => setState(() => hovering = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.onPressed,
          child: Text(
            widget.text,
            style: widget.style ?? context.textTheme.headline5,
          ),
        ),
      ),
    );
  }
}

class UnderlinedButton extends StatefulWidget {
  const UnderlinedButton({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 100),
    this.onTap,
    this.onEnter,
    this.onExit,
    this.lineColor,
    this.lineWidth = 1,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onEnter;
  final VoidCallback? onExit;
  final Duration duration;
  final Color? lineColor;
  final double lineWidth;

  @override
  _UnderlinedButtonState createState() => _UnderlinedButtonState();
}

class _UnderlinedButtonState extends State<UnderlinedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: widget.duration);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        controller.play();
        widget.onEnter?.call();
      },
      onExit: (event) {
        controller.playReverse();
        widget.onExit?.call();
      },
      cursor: MaterialStateMouseCursor.clickable,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return CustomPaint(
            size: Size.infinite,
            painter: UnderlinePainter(
              widget.lineColor ?? context.colorScheme.onSurface,
              CurvedAnimation(
                curve: Curves.linearToEaseOut,
                parent: controller,
              ).value,
              widget.lineWidth,
            ),
            child: child,
          );
        },
        child: GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.0 * widget.lineWidth),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

class UnderlinePainter extends CustomPainter {
  UnderlinePainter(this.color, this.progress, this.lineWidth);

  final Color color;
  final double progress;
  final double lineWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width;
    final y = size.height;

    final path = Path()
      ..moveTo(0, y)
      ..lineTo(x - (x / 3 * progress), y)
      ..relativeMoveTo(x / 3 * progress, 0)
      ..lineTo(x, y);

    final paint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(UnderlinePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(UnderlinePainter oldDelegate) => false;
}
