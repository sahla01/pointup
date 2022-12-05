import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/receiptsubmit/receiptdetails.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ReceiptSubmitPage extends StatefulWidget {
  const ReceiptSubmitPage({Key? key}) : super(key: key);

  @override
  State<ReceiptSubmitPage> createState() => _ReceiptSubmitPageState();
}

class _ReceiptSubmitPageState extends State<ReceiptSubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Center(
          child: AppText(
            text: "Receipt Submit",
            color: Colors.white,
            size: 16,
            fw: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Image.asset("assets/images/noti.png"),
          // IconButton(
          //     onPressed: () {}, icon: const SvgIcon("assets/icons/notifi.svg"))
        ],
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      drawer: _customDrwer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20,),
                  child: AppText(
                    text: "List Of Submission (6)",
                    size: 12,
                    fw: FontWeight.bold,
                    color: const Color(0xff333333),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      itemCount: 6,
                      itemBuilder: (context,int index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReceiptDetailsPage()));
                          },
                          child: Card(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0),)
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              title:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 130,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText(text: "Member ID#",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        AppText(text: "9846787697",size: 10,color: const Color(0xffA1A2A8),),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        RichText(
                                          maxLines: 1,
                                          text: const TextSpan(
                                              text: '13/04/2022,',
                                              style: TextStyle(
                                                  color: Color(0xffA1A2A8),
                                                  fontSize: 10),
                                              children: [
                                                TextSpan(
                                                    text: '03:46 PM\n',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color(0xffA1A2A8))),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: AppText(
                                              text: "3500.00",
                                              size: 12,
                                              fw: FontWeight.bold,
                                              color: const Color(0xffF99F1E)
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: AppText(
                                              text: "Bill # 1023456",
                                              size: 10,
                                              fw: FontWeight.bold,
                                              color: const Color(0xffA1A2A8)
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),

                                        RichText(
                                          maxLines: 1,
                                          text: const TextSpan(
                                              text: '13/04/2022,',
                                              style: TextStyle(
                                                  color: Color(0xffA1A2A8),
                                                  fontSize: 10),
                                              children: [
                                                TextSpan(
                                                    text: '10:30 AM\n',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color(0xffA1A2A8))),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),


                            ),
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  _customDrwer() {
    return Drawer(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff19184D), Color(0xff530393)]),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logos.png",
                    ),
                    alignment: Alignment.center),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 250, right: 260),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
              // child: Padding(
              //   padding: EdgeInsets.only(top: 110,),
              //   child: Center(child: Text('MY WORLD Fashion',style: TextStyle(color: Color(0xff19184D),fontWeight: FontWeight.w800),)),
              // ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
              children: [
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/qrcode.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'My Shop QR Code',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/user.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'User Information',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/passwordlock.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/report.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Reports',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/review.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Customer Review & Rating',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/contact.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/termsconditions.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/policy.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Privacy & Policy',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 42,
                    width: 240,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xff19184D), Color(0xff530393)]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: AppText(
                          text: "Sign Out",
                          size: 12,
                          fw: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Version :1.4 (1.0)",
                      size: 10,
                      color: const Color(0xffA1A2A8),
                      fw: FontWeight.w600,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
