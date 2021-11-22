import 'package:daobao/helpers/extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              'https://i.imgur.com/Pp2bKbL.png',
              height: 200,
            ),
            const SizedBox(height: 32),
            SelectableText(
              'The first community homepage.',
              style: context.sTextTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
