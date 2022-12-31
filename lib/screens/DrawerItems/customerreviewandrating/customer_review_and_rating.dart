import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/model.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:svg_icon/svg_icon.dart';

class CustomerReviewAndRating extends StatefulWidget {
  const CustomerReviewAndRating({Key? key}) : super(key: key);

  @override
  State<CustomerReviewAndRating> createState() =>
      _CustomerReviewAndRatingState();
}

class _CustomerReviewAndRatingState extends State<CustomerReviewAndRating> {
  TextEditingController msgController = TextEditingController();
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  late final List<Item> _data = generateItems(8);
  List<Item> generateItems(int numberOfItems) {
    return List<Item>.generate(numberOfItems, (int index) {
      return Item(
        headerValue: 'Show',
        expandedValue: 'This is item number $index',
      );
    });
  }

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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
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
                          text: "Ratings",
                          color: const Color(0xff333333),
                          fw: FontWeight.bold,
                          size: 12,
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 0.5, color: Color((0xffDADADA))),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          // color: Colors.teal,
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              AppText(
                                text: "Average Ratings",
                                size: 10,
                                fw: FontWeight.w600,
                                color: const Color(0xff333333),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AppText(
                                text: "4.7",
                                size: 30,
                                fw: FontWeight.bold,
                                color: const Color(0xff19184D),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SmoothStarRating(
                                allowHalfRating: true,
                                size: 16.0,
                                starCount: 5,
                                rating: 4.1,
                                spacing: 1.5,
                                color: const Color(0xffF99F1E),
                                borderColor: const Color(0xffF99F1E),
                                onRatingChanged: (rating) {
                                  print(rating);
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(width: 30,),
                        Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  reverse: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppText(
                                          text: "${index + 1}",
                                          size: 10,
                                          fw: FontWeight.w600,
                                          color: const Color(0xff000000),
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xffF99F1E),
                                          size: 14,
                                        ),
                                        LinearPercentIndicator(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          lineHeight: 9,
                                          percent: ratings[index],
                                          progressColor:
                                              const Color(0xffF99F1E),
                                          backgroundColor:
                                              const Color(0xffDADADA),
                                        ),
                                        AppText(
                                          text: "80%",
                                          size: 10,
                                          fw: FontWeight.w600,
                                          color: const Color(0xff000000),
                                        )
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      const SizedBox(
                        width: 80,
                      ),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.pushNamed(context, '/viewcustomerreviewlist');
                      //     },
                      //     child: Padding(
                      //       padding: const EdgeInsets.only(top: 10),
                      //       child: Text(
                      //         "See All Review",
                      //         style: TextStyle(
                      //             fontSize: 12,
                      //             foreground: Paint()..shader = linearGradient,
                      //             fontWeight: FontWeight.w600),
                      //       ),
                      //     )),
                      // IconButton(onPressed: () {
                      //
                      // },
                      //     icon: Padding(
                      //       padding: const EdgeInsets.only(top: 10),
                      //       child: Icon(Icons.more_vert_rounded,size: 20,color: Color(0xff360E70),),
                      //     ))
                      // PopupMenuButton<int>(
                      //   icon: const Padding(
                      //     padding: EdgeInsets.only(top: 10, left: 20),
                      //     child: Icon(
                      //       Icons.more_vert_rounded,
                      //       size: 20,
                      //       color: Color(0xff360E70),
                      //     ),
                      //   ),
                      //   itemBuilder: (context) => [
                      //     // PopupMenuItem 1
                      //     const PopupMenuItem(
                      //       value: 1,
                      //       child: Text(
                      //         "Newest Review",
                      //         style: TextStyle(
                      //             fontSize: 13, color: Color(0xff333333)),
                      //       ),
                      //     ),
                      //     const PopupMenuItem(
                      //       value: 2,
                      //       child: Text("Oldest Review",
                      //           style: TextStyle(
                      //               fontSize: 13, color: Color(0xff333333))),
                      //     ),
                      //   ],
                      //   offset: const Offset(
                      //     0,
                      //     22,
                      //   ),
                      //   color: Colors.white,
                      //   elevation: 2,
                      //   onSelected: (value) {
                      //     if (value == 1) {
                      //     } else if (value == 2) {
                      //     }
                      //   },
                      // ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 3.0,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  profileName[index],
                                                  style: const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff000000)),
                                                ),
                                                const Text(
                                                  "4hr ago",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xffA1A2A8)),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            SmoothStarRating(
                                              allowHalfRating: true,
                                              size: 16.0,
                                              starCount: 5,
                                              rating: 5,
                                              spacing: 1.5,
                                              color: const Color(0xffF99F1E),
                                              borderColor:
                                                  const Color(0xffF99F1E),
                                              onRatingChanged: (rating) {
                                                print(rating);
                                              },
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
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                // const SizedBox(
                                                //   width: 3,
                                                // ),
                                                // Text(
                                                //   "Show",
                                                //   style: TextStyle(
                                                //       fontWeight: FontWeight.bold,
                                                //       fontSize: 10,
                                                //       foreground: Paint()
                                                //         ..shader =
                                                //             linearGradient),
                                                // ),
                                                // const Icon(
                                                //   Icons
                                                //       .keyboard_arrow_down_rounded,
                                                //   size: 18,
                                                //   color: Color(0xff360E70),
                                                // ),
                                                Container(
                                                  height: 60,
                                                  width: 200,
                                                  margin: const EdgeInsets.only(
                                                      top: 5,right: 5),
                                                  child: SingleChildScrollView(
                                                    child: ExpansionPanelList(
                                                      expansionCallback: (int index, bool isExpanded) {
                                                        setState(() {
                                                          _data[index].isExpanded = !isExpanded;
                                                        });
                                                      },
                                                      children: _data.map<ExpansionPanel>((Item item) {
                                                        return ExpansionPanel(
                                                          headerBuilder: (BuildContextcontext, boolisExpanded) {
                                                            return ListTile(
                                                              title: Text(
                                                                item.headerValue,
                                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10, foreground: Paint()..shader = linearGradient),
                                                              ),
                                                            );
                                                          },
                                                          body: ListTile(
                                                            title: Text(
                                                              item.expandedValue,
                                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10, foreground: Paint()..shader = linearGradient),
                                                            ),
                                                            subtitle: const Text(
                                                                'To delete this panel, tap the trash can icon'),
                                                          ),
                                                          isExpanded:
                                                              item.isExpanded,
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        _showMyDialog();
                                                      },
                                                      child: AppText(
                                                        text: "Reply",
                                                        size: 10,
                                                        fw: FontWeight.bold,
                                                        color: const Color(
                                                            0xffA1A2A8),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Load More",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                    ),
                  )
                ],
              ),
            ],
          ),
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
                  borderRadius: BorderRadius.circular(10.0)),
              content: SizedBox(
                width: 230.0,
                height: 135.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                        maxLines: 4,
                        cursorColor: const Color(0xff333333),
                        controller: msgController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 13),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(0xffDADADA)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(0xffDADADA)),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: const TextStyle(
                              fontSize: 9, color: Color(0xffA1A2A8)),
                          hintText: 'Write here your comment’s.............',
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText(
                          text: "Cancel",
                          size: 10,
                          color: const Color(0xffF99F1E),
                          fw: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = linearGradient),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ));
        });
  }
}
