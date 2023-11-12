import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/gen/fonts.gen.dart';
import 'package:blogapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isActive = false;
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ///TODOO:Logo Image
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 2.7,
                  top: size.height * 0.04,
                  right: size.width / 2.8),
              child: SvgPicture.asset(
                Assets.img.icons.logo.path,
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),

            ///TODO:Blue Background
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),

                    ///TODO:Login and SignUp TextSection
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: textTheme.titleSmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SignUp",
                            style: isActive
                                ? textTheme.titleSmall!
                                    .copyWith(fontWeight: FontWeight.w500)
                                : textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 32, right: 32, top: size.height * 0.03),
                              child: SizedBox(
                                width: size.width,
                                height: size.height,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Welcome Back",
                                        style: textTheme.titleLarge),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Text("Sign in with your Account",
                                        style: textTheme.titleLarge!.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18)),

                                    ///TODO:Username Field
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        enabled: true,
                                        decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1.5,
                                                    color: Colors.blueAccent)),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1.5,
                                                    color: Colors.blueAccent)),
                                            enabled: true,
                                            labelText: 'Username'),
                                      ),
                                    ),

                                    ///TODO:Password Field
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        obscureText: isObsecure,
                                        decoration: InputDecoration(
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 1.5,
                                                        color:
                                                            Colors.blueAccent)),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 1.5,
                                                        color:
                                                            Colors.blueAccent)),
                                            enabled: true,
                                            suffixIconColor: Colors.blueAccent,
                                            suffixIcon: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  isObsecure = !isObsecure;
                                                });
                                              },
                                              child: const Text(
                                                "Show",
                                                style: TextStyle(
                                                    fontFamily:
                                                        FontFamily.avenir,
                                                    color: Colors.blueAccent,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            labelText: 'Password'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.04,
                                    ),

                                    ///Button Section
                                    SizedBox(
                                      width: size.width * .9,
                                      height: size.height / 12,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15))),
                                            backgroundColor: Colors.blueAccent),
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ));
                                        },
                                        child: Text(
                                          'LOGIN',
                                          style: textTheme.titleLarge!.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),

                                    ///TODO:ForgetPass Section
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.08,
                                        ),
                                        Text(
                                          'Forget Password? ',
                                          style: textTheme.titleMedium,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Reset Here',
                                            style: textTheme.titleMedium!
                                                .copyWith(
                                                    color: Colors.blueAccent),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 90),
                                      child: Text(
                                        "Or Sign in With",
                                        style: textTheme.titleMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.img.icons.google.path,
                                            width: 40,
                                            height: 40,
                                          ),
                                          SizedBox(
                                            width: size.width * 0.04,
                                          ),
                                          Image.asset(
                                            Assets.img.icons.facebook.path,
                                            width: 40,
                                            height: 40,
                                          ),
                                          SizedBox(
                                            width: size.width * 0.04,
                                          ),
                                          Image.asset(
                                            Assets.img.icons.twitter.path,
                                            width: 40,
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
