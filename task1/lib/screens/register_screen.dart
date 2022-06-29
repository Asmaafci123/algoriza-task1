import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:task1/size.dart';
import 'package:task1/utilities/routes.dart';
import 'package:task1/widgets/button-sign-with.dart';
import 'package:task1/widgets/divider.dart';
import 'package:task1/widgets/input-field.dart';

import '../widgets/material-button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountryCode? _code;
    var key = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  color: const Color(0xFF51AFAB),
                ),
                Positioned(
                    top: SizeConfig.defaultSize! * 3,
                    left: SizeConfig.defaultSize! * 2,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/back-arrow1.png'),
                    ))
              ],
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.defaultSize! * 1.5,
                  SizeConfig.defaultSize! * 0.4,
                  SizeConfig.defaultSize! * 1.5,
                  0),
              child: Form(
                key: key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: SizeConfig.defaultSize! * 1.3),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'RobotoSlab',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.defaultSize! * 4),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              'Help',
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.defaultSize! * 1.5),
                            ),
                            SizedBox(
                              width: SizeConfig.defaultSize! * 0.4,
                            ),
                            SizedBox(
                              height: 18,
                              child: Image.asset(
                                  'assets/images/question-mark.png'),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.defaultSize! * 1.5),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.2,
                    ),
                    InputField(
                      error: 'email is wrong',
                      hintText: 'Eg.example@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.defaultSize! * 1.5),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.2,
                    ),
                    InputField(
                      error: 'phone number is wrong',
                      hintText: 'Eg.12345678',
                      keyboardType: TextInputType.phone,
                      prefix: CountryListPick(
                        theme: CountryTheme(
                          isShowFlag: false,
                          isShowTitle: false,
                          isShowCode: true,
                          isDownIcon: true,
                          showEnglishName: true,
                          lastPickText: _code.toString(),
                        ),
                        initialSelection: '+20',
                        useSafeArea: false,
                        onChanged: (CountryCode? code) {
                          _code = code;
                        },
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.defaultSize! * 1.5),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.2,
                    ),
                    InputField(
                      error: 'password must be 6 characters',
                      hintText: 'Password',
                      keyboardType: TextInputType.text,
                      suffix: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    CustomButton(
                        text: 'Register',
                        onPressed: () {
                          key.currentState!.validate();
                        },
                        textColor: Colors.white,
                        width: double.infinity,
                        height: SizeConfig.defaultSize! * 5.3,
                        radius: SizeConfig.defaultSize! * 1,
                        buttonColor: Colors.blue),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Row(
                      children: [
                        CustomDivider(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.defaultSize! * 1.5,
                              0,
                              SizeConfig.defaultSize! * 1.5,
                              0),
                          child: Text(
                            'Or',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.defaultSize! * 1.5),
                          ),
                        ),
                        CustomDivider(),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    ButtonForSignWith(),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Has any account?",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.defaultSize! * 1.7),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.loginScreenRoute);
                            },
                            child: Text(
                              'Sign in here',
                              style: TextStyle(
                                  color: const Color(0xFF51AFAB),
                                  fontSize: SizeConfig.defaultSize! * 1.7),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By registering your account, you are agree to our",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.defaultSize! * 1.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'terms and condition',
                              style: TextStyle(
                                  color: const Color(0xFF51AFAB),
                                  fontSize: SizeConfig.defaultSize! * 1.7),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),
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
