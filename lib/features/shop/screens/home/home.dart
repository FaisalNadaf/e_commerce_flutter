import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                      top: -150,
                      right: -250,
                      child: TCircularContainer(
                        color: TColors.textWhite,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: -300,
                      child: TCircularContainer(
                        color: TColors.textWhite,
                      ),
                    ),
                    //   Column(
                    //     children: [

                    //     ],
                    //   )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
