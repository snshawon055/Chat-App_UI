import 'package:flutter/material.dart';
import 'package:personal_chat_app/screen/welcome/signin_or_signup/signin_or_signup_screen.dart';
import 'package:personal_chat_app/widgets/add_space.dart';
import 'package:personal_chat_app/widgets/constants.dart';

class WellComeScreen extends StatelessWidget {
  const WellComeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/welcome_image.png",
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              "WellCome to our freedom \nmessaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Spacer(),
            Text(
              "Freedom talk any person of your \nmonther language",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color
                      ?.withOpacity(0.64)),
            ),
            Spacer(flex: 2),
            FittedBox(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInOrSignUpScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color
                                ?.withOpacity(0.8)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color
                            ?.withOpacity(0.64),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
