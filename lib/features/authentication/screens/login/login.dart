import 'package:flutter/material.dart';

import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/form_divider.dart';
import 'package:e_commerce/common/widgets/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            TLoginHeader(),
            TLoginForm(),
            TFormDivider(dividerText: TTexts.orSignInWith),
            SizedBox(height: TSizes.spaceBtwSections),
            TSocialButtons()
          ],
        ),
      ),
    );
  }
}
