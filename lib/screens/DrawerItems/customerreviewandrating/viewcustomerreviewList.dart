import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:svg_icon/svg_icon.dart';

class ViewCustomerReviewList extends StatefulWidget {
  const ViewCustomerReviewList({Key? key}) : super(key: key);

  @override
  State<ViewCustomerReviewList> createState() => _ViewCustomerReviewListState();
}

class _ViewCustomerReviewListState extends State<ViewCustomerReviewList> {

  TextEditingController msgController = TextEditingController();

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
              text: "Customer Review & Ratings",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: AppText(
                        text: "Most Recent Customer Review’s",
                        color: const Color(0xff333333),
                        fw: FontWeight.bold,
                        size: 12,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.vertical,
                  itemCount: profileList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.5, color: Color((0xffDADADA))),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            title: Column(
                              children: [
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      profileList[index],
                                      fit: BoxFit.cover,
                                      height: 45,
                                      width: 45,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 260,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                profileName[index],
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff000000)),
                                              ),
                                              const Text(
                                                "4hr ago",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xffA1A2A8)),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          SmoothStarRating(
                                            size: 16.0,
                                            starCount: 5,
                                            rating: 5,
                                            color: const Color(0xffF99F1E),
                                            borderColor:
                                            const Color(0xffF99F1E),
                                          ),
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                          const Text(
                                            "“MY WORD FASHION” is very good shop,very good collections,\n good brands as well as very good customer service, Thanks\n Team!!",
                                            maxLines: 3,
                                            style: TextStyle(
                                              height: 1.4,
                                              fontSize: 9,
                                              color: Color(0xffA1A2A8),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  "Replied:",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 10,
                                                      foreground: Paint()
                                                        ..shader =
                                                            linearGradient),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                "Show",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    foreground: Paint()
                                                      ..shader =
                                                          linearGradient),
                                              ),
                                              const Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 18,
                                                color: Color(0xff360E70),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 80),
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                    onTap:(){
                                                      _showMyDialog();
                                                    },
                                                    child: AppText(
                                                      text: "Reply",
                                                      size: 10,
                                                      fw: FontWeight.bold,
                                                      color:
                                                      const Color(0xffA1A2A8),
                                                    )),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                const SvgIcon(
                                                  "assets/icons/msg.svg",
                                                  color: Color(0xffA1A2A8),
                                                  height: 20,
                                                  width: 20,
                                                ),
                                                const SizedBox(
                                                  width: 13,
                                                ),
                                                AppText(
                                                  text: "Dislike",
                                                  size: 10,
                                                  fw: FontWeight.bold,
                                                  color:
                                                  const Color(0xffA1A2A8),
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                const Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 6),
                                                  child: SvgIcon(
                                                    "assets/icons/dislike.svg",
                                                    color: Color(0xffA1A2A8),
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 13,
                                                ),
                                                AppText(
                                                  text: "Like",
                                                  size: 10,
                                                  fw: FontWeight.bold,
                                                  color:
                                                  const Color(0xffA1A2A8),
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 6),
                                                  child: SvgIcon(
                                                    "assets/icons/likee.svg",
                                                    color: Color(0xffA1A2A8),
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),


    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              content: SizedBox(
                width: 230.0,
                height: 135.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                        maxLines: 4,
                        cursorColor: const Color(0xff333333),
                        controller:msgController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 9, color: Color(0xffA1A2A8)),
                          hintText: 'Write here your comment’s.............',
                        )
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText(text: "Cancel",size: 10,color: const Color(0xffF99F1E),fw: FontWeight.bold,),
                        const SizedBox(width: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Text("Send",style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = linearGradient
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              )
          );
        });
  }
}
