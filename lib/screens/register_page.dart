import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../widgets/widget.dart';
import '../constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image(
            width: 24,
            color: Colors.white,
            image: Svg('assets/images/back_arrow.svg'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Register",
                            style: kHeadline,
                          ),
                          Text(
                            "Create new account to get started.",
                            style: kBodyText2,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyTextField(
                            hintText: 'Name',
                            inputType: TextInputType.name,
                          ),
                          MyTextField(
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          MyTextField(
                            hintText: 'Phone',
                            inputType: TextInputType.phone,
                          ),
                          MyPasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: kBodyText,
                        ),
                        Text(
                          "Sign In",
                          style: kBodyText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      buttonName: 'Register',
                      onTap: () {},
                      bgColor: Colors.white,
                      textColor: Colors.black87,
                    )
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
