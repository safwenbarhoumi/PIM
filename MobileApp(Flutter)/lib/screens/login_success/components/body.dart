import 'package:flutter/material.dart';
import 'package:esprit/components/default_button.dart';
import 'package:esprit/screens/profile/profile_screen.dart';
import 'package:esprit/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Registration Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Let's start!",
            press: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
