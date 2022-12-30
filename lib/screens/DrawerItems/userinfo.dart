import 'package:flutter/material.dart';
import 'package:pointup/widgets/app_text.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // flexibleSpace: FlexibleSpaceBar(
            //   centerTitle: true,
            //   title: Container(
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.topLeft,
            //             end: Alignment.topRight,
            //             colors: [Color(0xff19184D), Color(0xff530393)])),
            //   ),
            // ),
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
            title: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Center(
                child: AppText(
                  text: "User Information",
                  size: 14,
                  fw: FontWeight.bold,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(180),
              child: Column(
                children: [
                  Image.asset("assets/images/logos.png"),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      AppText(
                        text: "MY WORLD Fashion",
                        size: 14,
                        fw: FontWeight.w800,
                        color: const Color(0xffFFFFFF),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "Shop ID# 100234",
                        size: 12,
                        fw: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            expandedHeight: 230,
            backgroundColor: Color(0xff19184D)
          ), //SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 240),
                                child: AppText(
                                  text: "User Information",
                                  size: 14,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "User Full Name",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "Midhun Varma",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "Designation",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "Cashier",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "Shop Mobile For OTP",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "9876765654",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "User ID/Email",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "Myworldadmin1234",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "Since User",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "05/08/2022",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "Last Logged In",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 327,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F6FF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(
                                              0xffDADADA,
                                            ),
                                            width: 0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AppText(
                                            text: "11/11/2022 , 03:47 PM",
                                            size: 12,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                childCount: 1),
          )
        ],
      ),
    );
  }
}
