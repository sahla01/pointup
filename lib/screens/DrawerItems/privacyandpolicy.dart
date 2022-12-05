import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class PrivacyAndPolicy extends StatelessWidget {
  PrivacyAndPolicy({Key? key}) : super(key: key);

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 15,
                color: Colors.white,
              ),
            );
          },
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: AppText(
              txtalign: TextAlign.left,
              text: "Privacy & Policy",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
        ),
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Privacy & Policy",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText(
                text: "Lorem ipsum dolor sit amet,consectetur adipiscing \n"
                    "elit. Integer   blandit  donec  turpis  mauris  neque.\n"
                    "Purus nulla a arcu fringilla. Blandit faucibus vivamus \n est amet in eros. "
                    "Massa sit consectetur eros, feugiat\n vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. "
                    "Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla."
                    " Blandit faucibus vivamus est amet in eros."
                    " Massa sit consectetur eros, feugiat vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. "
                    "Blandit faucibus vivamus est amet in eros."
                    " Massa sit consectetur eros, feugiat vitae.Lorem ",
                size: 12,
                fw: FontWeight.w600,
                color: Color(0xffA1A2A8),
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Integer blandit donec turpis mauris neque. "
                    "Purus nulla a arcu fringilla. "
                    "Blandit faucibus vivamus est amet in eros."
                    " Massa sit consectetur eros, feugiat vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    " Integer blandit donec turpis mauris neque."
                    " Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. "
                    "Massa sit consectetur eros, feugiat vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Integer blandit donec turpis mauris neque. "
                    "Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. "
                    "Massa sit consectetur eros, feugiat vitae."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    " Integer blandit donec turpis mauris neque. "
                    "Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. "
                    "Massa sit consectetur eros, feugiat vitae.Lorem",
                size: 12,
                fw: FontWeight.w600,
                color: Color(0xffA1A2A8),
              ),
            ],
          )
        ],
      ),
    );
  }
}
