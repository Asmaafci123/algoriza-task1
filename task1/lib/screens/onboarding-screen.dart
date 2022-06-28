import 'package:flutter/material.dart';
import 'package:task1/size.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:task1/utilities/routes.dart';
import '../widgets/item-onboarding.dart';
import '../widgets/material-button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<ItemOfPageView> items = [
      ItemOfPageView(
          imagePath: 'assets/images/onboard-1.png',
          headLine: 'Get food delivery to your doorstep asap',
          description:
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
      ItemOfPageView(
          imagePath: 'assets/images/onboard-2.png',
          headLine: 'Buy Any Food from your favourite restaurant',
          description:
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
      ItemOfPageView(
          imagePath: 'assets/images/onboard-2.jpg',
          headLine: 'Buy Any Food from your favourite restaurant',
          description:
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
    ];
    PageController controller = PageController();
    SizeConfig().init(context);
    int _curr = 0;
    double _current = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.5,
              SizeConfig.defaultSize! * 0.4, SizeConfig.defaultSize! * 1.5, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Spacer(),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginScreenRoute);
                    },
                    text: 'Skip',
                    radius: SizeConfig.defaultSize! * 2.5,
                    buttonColor: const Color(0xFFFAF2E7),
                  )
                ],
              ),
              const SizedBox(
                width: 100,
                child: Image(image: AssetImage('assets/images/logo.jpg')),
              ),
              SizedBox(
                height: 340,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 2, 0,
                      SizeConfig.defaultSize! * 2, 0),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      ItemOfOnboarding(
                        item: items[0],
                      ),
                      ItemOfOnboarding(
                        item: items[1],
                      ),
                      ItemOfOnboarding(
                        item: items[2],
                      ),
                    ],
                    onPageChanged: (num) {
                      setState(() {
                        _curr = num;
                        //  print(num);
                        _current = num.toDouble();
                        // print(_current);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.defaultSize!,
              ),
              DotsIndicator(
                dotsCount: items.length,
                position: _current,
                decorator: DotsDecorator(
                  spacing: EdgeInsets.fromLTRB(
                      0, 0, SizeConfig.defaultSize! * 0.8, 0),
                  size: Size(SizeConfig.defaultSize! * 2.2,
                      SizeConfig.defaultSize! * 0.6), //(width,height)
                  activeSize: Size(SizeConfig.defaultSize! * 2.2,
                      SizeConfig.defaultSize! * 0.6), //(width,height)
                  activeColor: const Color(0xFFE6BC83),
                  color: const Color(0xFFE8E8E8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 1.8,
              ),
              CustomButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.loginScreenRoute);
                },
                textColor: Colors.white,
                width: double.infinity,
                height: SizeConfig.defaultSize! * 5.3,
                radius: SizeConfig.defaultSize! * 1,
                buttonColor: const Color(0xFF51AFAB),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * .1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.defaultSize! * 1.8),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            color: const Color(0xFF51AFAB),
                            fontSize: SizeConfig.defaultSize! * 1.8),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemOfPageView {
  final String imagePath;
  final String headLine;
  final String description;
  ItemOfPageView(
      {required this.imagePath,
      required this.headLine,
      required this.description});
}
