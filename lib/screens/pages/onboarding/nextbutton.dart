import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/controller/onboardingcontroller.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return ElevatedButton(
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.transparent
                    : null;
              },
            )),
        onPressed: () {
          controller.nextPage();
        },
        child: const Icon(
          Iconsax.arrow_right,
          color: Colors.amber,
          size: 30,
        ));
  }
}
