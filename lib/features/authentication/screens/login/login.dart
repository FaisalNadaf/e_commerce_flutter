import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 100,
                  image: AssetImage(
                    !dark ? TImages.darkAppLogo : TImages.lightAppLogo,
                  ),
                ),
                Text(
                  TTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  TTexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: TSizes.spaceBtwSections,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.direct_right,
                        ),
                        labelText: TTexts.email,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.password_check,
                        ),
                        suffixIcon: Icon(
                          Iconsax.eye_slash,
                        ),
                        labelText: TTexts.password,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(
                              TTexts.rememberMe,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            TTexts.forgetPassword,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          TTexts.signIn,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          TTexts.createAccount,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Divider(
                    color: dark ? TColors.darkGrey : TColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ),
                Text(
                  TTexts.orSignInWith,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Flexible(
                  child: Divider(
                    color: dark ? TColors.darkGrey : TColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: dark ? TColors.light : TColors.grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      height: TSizes.iconMd,
                      width: TSizes.iconMd,
                      image: AssetImage(
                        TImages.google,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: dark ? TColors.light : TColors.grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      height: TSizes.iconMd,
                      width: TSizes.iconMd,
                      image: AssetImage(
                        TImages.facebook,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
