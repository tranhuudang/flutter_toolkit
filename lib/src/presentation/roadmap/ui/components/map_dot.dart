import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class MapDot extends StatelessWidget {
  final bool? branchLeft;
  final bool? branchRight;
  const MapDot({
    super.key,
    this.branchLeft,
    this.branchRight,
  });

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 500) / 2;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (branchLeft ?? false) ...[
              Container(
                color: context.theme.colorScheme.primary,
                height: 3,
                width: width,
              ),
              Container(
                color: Colors.transparent,
                height: 3,
                width: width,
              ),
            ],
            if (branchRight ?? false) ...[
              Container(
                color: Colors.transparent,
                height: 3,
                width: width,
              ),
              Container(
                color: context.theme.colorScheme.primary,
                height: 3,
                width: width,
              ),
            ],
          ],
        ),
        Center(
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: context.theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}