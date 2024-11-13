import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class MapGroup extends StatelessWidget {
  final List<Widget>? gridChildren;
  final List<Widget>? columnChildren;
  final Color? backgroundColor;
  final String? title;
  const MapGroup({
    super.key,
    this.gridChildren,
    this.backgroundColor,
    this.title,
    this.columnChildren,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      padding: const EdgeInsets.all(16),
      width: 260,
      decoration: BoxDecoration(
          color: backgroundColor ?? context.theme.colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: context.theme.textTheme.titleSmall,
            ),
            16.height,
          ],
          if (columnChildren != null) ...[
            ...columnChildren!,
            4.height,
          ],
          if (gridChildren != null)
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 50,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4),
              children: gridChildren!,
            ),
        ],
      ),
    );
  }
}