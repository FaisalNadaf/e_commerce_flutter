import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.trailing,
      this.onTap});

  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: trailing,
    );
  }
}
