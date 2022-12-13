import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/Notification/notificationdetails.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  var dropdownnotifi;
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 12),
                 child: AppText(text: "All Notifications",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
               ),
             ],
           ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                 itemCount: 1,
                  itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationDetails()));
                      },
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.5, color: Color((0xffDADADA))),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: ListTile(
                        leading: Image.asset("assets/images/notificationlogo.png",height: 54,width: 54,),
                        title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15,),
                            AppText(text: "From:",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                            const SizedBox(height: 5,),
                            AppText(text: "Team Pointupp",size: 12,fw: FontWeight.w600,color: const Color(0xff333333),),
                            const SizedBox(height: 5,),
                            AppText(text: "Thank you for Register!",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                            const SizedBox(height: 15,),
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppText(text: "10 Aug, 2022 10.00 AM",size: 8,fw: FontWeight.w600,color: const Color(0xffA1A2A8),),
                            const SizedBox(height: 20,),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff19184D),
                                    Color(0xff530393)
                                  ]
                                ),
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: const SvgIcon("assets/icons/delete.svg",width: 18,height: 18,color: Colors.white,),
                            )
                          ],
                        ),

                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
