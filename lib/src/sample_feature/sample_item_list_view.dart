import 'package:flutter/material.dart';

import 'sample_item.dart';
import 'sample_item_details_view.dart';

/// Displays a list of SampleItems.
class SampleItemListPage extends StatelessWidget {
  const SampleItemListPage({
    Key? key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  }) : super(key: key);

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Flexible(child: Container()),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Proposals',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'About',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                Flexible(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
