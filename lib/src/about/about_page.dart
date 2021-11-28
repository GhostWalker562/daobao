import 'dart:math';

import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/src/home/home_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = context.media.size.height;
    final double screenWidth = context.media.size.width;

    return Container(
      color: context.colorScheme.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DefaultHomePage(),
            Container(
              height: screenHeight - 70,
              color: context.colorScheme.primary,
              child: Stack(
                children: [
                  Positioned(
                    bottom: screenHeight / 16,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/images/floor.png'),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 0,
                    child: Image.asset(
                      'assets/images/community.png',
                      width: screenWidth / 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SelectableText(
                              'Your Community.\nYour Way.',
                              style: context.textTheme.headline2!
                                  .copyWith(color: context.colorScheme.surface),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              width: 250,
                              height: 3,
                              color: context.colorScheme.surface,
                            ),
                            const SizedBox(height: 24),
                            SizedBox(
                              width: 400,
                              child: SelectableText(
                                '''
HomepageDao is a community governed, editable homepage for members of Daobao. You can vote on everything from displayed content to background color– without the permission of an admin.

It’s your community, however you
might like. ''',
                                style: context.sTextTheme.headline5!.copyWith(
                                    color: context.colorScheme.surface),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 64),
            Container(
              padding: const EdgeInsets.all(48),
              height: screenHeight - 80,
              width: screenWidth,
              color: context.colorScheme.surface,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isRow = constraints.maxWidth > 720;
                  final List<Widget> children = [
                    Expanded(
                      child: Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 500),
                          child: Image.asset('assets/images/empty_state.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24, width: 48),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: isRow
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        crossAxisAlignment: isRow
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          SelectableText(
                            'Inspiration',
                            style: context.textTheme.headline2!.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 400,
                            child: SelectableText('''
Decentralized technology is all about democratizing digital spaces– yet we still see community building disrupted by a lack of autonomy and community ownership. We think that our members deserve more, and we hope you do too.
''', style: context.sTextTheme.headline6),
                          )
                        ],
                      ),
                    ),
                  ];
                  return (isRow
                      ? Row(children: children)
                      : Column(children: children));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(48),
              constraints: BoxConstraints(
                  minHeight: screenHeight - 80, maxHeight: screenHeight),
              width: screenWidth,
              color: context.colorScheme.surface,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isRow = constraints.maxWidth > 720;
                  final List<Widget> children = [
                    Expanded(
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 500),
                          child: Image.asset('assets/images/stacks.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24, width: 48),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: isRow
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        crossAxisAlignment: isRow
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          SelectableText(
                            'How it works.',
                            style: context.textTheme.headline2!.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 400,
                            child: SelectableText(
                              '''
This homepage allows each member of Daobao to have an equal voice in the image and production of the homepage. Each stakeholder has voting power, established through token ownership. 

Decisions are established by majority vote– without the need for a babysitter’s permission. 
''',
                              style: context.sTextTheme.headline6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ];
                  return isRow
                      ? Row(children: children)
                      : Column(children: children);
                },
              ),
            ),
            SizedBox(height: 64),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(48),
              color: context.colorScheme.primary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SelectableText(
                    'Mission',
                    style: context.textTheme.headline2!.copyWith(
                      color: context.colorScheme.surface,
                    ),
                  ),
                  SizedBox(height: 48),
                  Container(
                    constraints: BoxConstraints(maxWidth: 650),
                    child: SelectableText(
                      '''
Our mission is to make Daobao community-oriented and fun. 

Daobao is a step towards creating a community that can enjoy the decision making process– rather than dealing with it. Imagine the power of a community, led by members that can point directly to where their voice mattered. Each button, each post, every color selected by a democratic system. With Daobao, we’re building a space that truly represents the people within it– however that may look. 
''',
                      style: context.sTextTheme.headline6!.copyWith(
                        color: context.colorScheme.surface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultHomePage extends StatelessWidget {
  const DefaultHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.media.size.height,
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        image: const DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          image: NetworkImage('https://i.imgur.com/wvqpL0q.png'),
        ),
      ),
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
              'The first community run homepage',
              style: context.sTextTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
