import 'package:flutter/material.dart';
class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          CustomInputField(
            label: 'Username or Email',
            prefixIcon: Icons.person,
            obscureText: true,
          ),
          SizedBox(height: space),
          CustomInputField(
            label: 'Password',
            prefixIcon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(height: space),
          CustomButton(
            color: kBlue,
            textColor: kWhite,
            text: 'Login to continue',
            onPressed: () {},
          ),
          SizedBox(height: 2 * space),
          CustomButton(
            color: kWhite,
            textColor: kBlack.withOpacity(0.5),
            text: 'Continue with Google',
            image: Image(
              image: AssetImage(kGoogleLogoPath),
              height: 48.0,
            ),
            onPressed: () {},
          ),
          SizedBox(height: space),
          CustomButton(
            color: kBlack,
            textColor: kWhite,
            text: 'Create a Bubble Account',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({
    @required this.animation,
  }) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    var height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: CustomInputField(
              label: 'Username or Email',
              prefixIcon: Icons.person,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomInputField(
              label: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Login to continue',
              onPressed: () {},
            ),
          ),
          SizedBox(height: 2 * space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: CustomButton(
              color: kWhite,
              textColor: kBlack.withOpacity(0.5),
              text: 'Continue with Google',
              image: Image(
                image: AssetImage(kGoogleLogoPath),
                height: 48.0,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: CustomButton(
              color: kBlack,
              textColor: kWhite,
              text: 'Create a Bubble Account',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
