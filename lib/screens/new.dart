import 'package:flutter/material.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 150,
         // color: Colors.red,
           child: ListView.builder(
          itemCount: pointvoucher.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 40.0),
                      child: Container(
                        height: 98,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(6),
                            border: Border.all(
                                width: 1,
                                color:
                                const Color(0xffF99F1E))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Image.asset(pointvoucher[index]),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(
                                      right: 10),
                                  child: AppText(
                                    text: points[index],
                                    size: 10,
                                    fw: FontWeight.bold,
                                    color: const Color(
                                        0xff39AE58),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 115,
                      top: 24,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Color(0xffF99F1E),
                          child: Icon(Icons.check,color: Color(0xffFFFFFF),size: 20,),

                        ),
                      ),
                    ),
                  ],
                ),
              );

          }),




      ),
    );
  }
}
