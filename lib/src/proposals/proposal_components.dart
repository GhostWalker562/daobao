import 'package:daobao/helpers/extensions.dart';
import 'package:flutter/material.dart';

class ProposalsContainerWrapper extends StatelessWidget {
  const ProposalsContainerWrapper({Key? key, required this.child, this.width = 650})
      : super(key: key);

  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Container(
          constraints:  BoxConstraints(maxWidth: width),
          child: child,
        ),
      ),
    );
  }
}
