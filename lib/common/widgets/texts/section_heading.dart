import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  TSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = "View All",
    this.showActionButton = true,
    this.textColor,
    this.onButtonPressed,
  });

  final String title, buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onButtonPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
