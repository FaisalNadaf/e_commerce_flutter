import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_iamge.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      imageUrl: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Profile Picture',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TProfileMenu(title: 'Name', value: 'Code_faisal'),
              const TProfileMenu(title: 'Username', value: 'Coding with faisal'),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TProfileMenu(
                title: 'User ID',
                value: '2345790',
                icon: Iconsax.copy,
              ),
              const TProfileMenu(title: 'E_mail', value: 'code@gmail.dev'),
              const TProfileMenu(title: 'Phone Number', value: '23790890235'),
              const TProfileMenu(title: 'Gender', value: 'Male'),
              const TProfileMenu(title: 'Date of Birth', value: '22 Feb, 2005'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
