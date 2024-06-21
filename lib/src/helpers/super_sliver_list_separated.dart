import 'package:flutter/material.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class SuperSliverListSeparated extends SuperSliverList {
  SuperSliverListSeparated({
    required this.itemCount,
    required this.itemBuilder,
    required this.separator,
    super.key,
  }) : super(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index.isOdd) {
                return separator(context, index ~/ 2);
              }
              return itemBuilder(context, index ~/ 2);
            },
            childCount: itemCount * 2 - 1,
          ),
        );
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final Widget Function(BuildContext context, int index) separator;
}
