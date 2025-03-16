import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/list_tile/setting_menu_tile_.dart';
import 'package:e_commerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: TColors.white,
                          ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TUserProfileTile(
                    onTap: () => Get.to(
                      () => const ProfileScreen(),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(
                      () => const ProfileScreen(),
                    ),
                  ),
                  TSettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add,remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupones',
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'Notifications',
                    subTitle: 'Set any Kind of notification message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  // --App Setting

                  const SizedBox(height: TSizes.spaceBtwSections),

                  const TSectionHeading(
                    title: 'App Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    icon: Iconsax.document_upload,
                    onTap: () {},
                  ),

                  TSettingMenuTile(
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (_) {}),
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (_) {}),
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    title: 'HD Image Quality',
                    subTitle: 'Set image quaality to be seen',
                    trailing: Switch(value: true, onChanged: (_) {}),
                    icon: Iconsax.image,
                    onTap: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Logout',
                      ),
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
