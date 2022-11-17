import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount:imgList.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Image.asset(imgList[index],height: 243,width: 347,),
                          SizedBox(height: 20,),
                          AppText(text: contants[index], size: 24,color: Color(0xff19184D),fw: FontWeight.bold,),
                          SizedBox(height: 10,),
                          AppText(text: 'Boost your customer engagement and grow your\n business with amazing customer loyalty rewards\n management system ',size: 12,color: Color(0xff19184D),),
                        ],
                      ),
                    );
              }),
            ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: DotsIndicator(
            dotsCount: imgList.length,
            decorator: DotsDecorator(
              color: Colors.grey, // Inactive color
              activeColor: Colors.orange,
            ),
          ),
        ),




        Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                height: 55,
                margin: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(25, 24, 77, 1),
                        Color.fromRGBO(25, 24, 77, 1),
                        Color.fromRGBO(28, 43, 174, 1)
                      ]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Center(child: AppText(text: 'Get Started',color: Colors.white,)),

                ),
              ),
            )
          ],
        ) ,
      ),
    );
  }

}

