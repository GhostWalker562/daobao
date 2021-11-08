import 'package:daobao/helpers/extensions.dart';
import 'package:flutter/material.dart';

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
