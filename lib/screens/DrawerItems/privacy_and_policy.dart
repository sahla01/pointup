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
      body: SizedBox(
        width:double.infinity ,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Privacy & Policy",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 15),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ",
                  textAlign: TextAlign.justify,
                  maxLines: 17,
                  style: TextStyle(
                    height: 1.3,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA1A2A8)),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 15),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ",
                  textAlign: TextAlign.justify,
                  maxLines: 17,
                  style: TextStyle(
                      height: 1.3,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA1A2A8)),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 15),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit donec turpis mauris neque. Purus nulla a arcu fringilla. Blandit faucibus vivamus est amet in eros. Massa sit consectetur eros, feugiat vitae.Lorem ",
                  textAlign: TextAlign.justify,
                  maxLines: 17,
                  style: TextStyle(
                      height: 1.3,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA1A2A8)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
