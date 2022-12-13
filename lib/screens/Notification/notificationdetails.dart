import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class NotificationDetails extends StatefulWidget {
  const NotificationDetails({Key? key}) : super(key: key);

  @override
  State<NotificationDetails> createState() => _NotificationDetailsState();
}

class _NotificationDetailsState extends State<NotificationDetails> {
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
            padding: const EdgeInsets.only(right: 40,),
            child: AppText(
              txtalign: TextAlign.left,
              text: "Notifications",
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
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: AppText(text: "Inbox",size: 12,fw: FontWeight.w800,color: const Color(0xff333333),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 347,
              height: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5,color: Color(0xffDADADA))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(width: 5,),
                      Image.asset("assets/images/notificationlogo.png",height: 54,width: 54,),
                      SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            AppText(text: "From:",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                            const SizedBox(height: 5,),
                            AppText(text: "Team Pointupp",size: 12,fw: FontWeight.w600,color: const Color(0xff333333),),
                            const SizedBox(height: 5,),
                            AppText(text: "Thank you for Register!",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                            const SizedBox(height: 15,),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20,bottom: 35),
                              child: AppText(text: "10 Aug, 2022 10.00 AM",size: 8,fw: FontWeight.w600,color: const Color(0xffA1A2A8),),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Dear Hello World Fashion,",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xff333333)),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Integer blandit donec turpis mauris neque. Purus\nnulla a arcu fringilla. Blandit faucibus vivamus est\namet in eros. Massa sit consectetur eros, feugiat vitae.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12,color: Color(0xffA1A2A8),height: 1.5,letterSpacing: 0.2),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: AppText(text: "Best regards",color: Color(0xff333333),size: 12,fw: FontWeight.bold,),
                      ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: AppText(text: "Team Pointupp",color: Color(0xff333333),size: 12,fw: FontWeight.bold,),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
