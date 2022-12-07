import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class CustomerReviewAndRating extends StatefulWidget {
  const CustomerReviewAndRating({Key? key}) : super(key: key);

  @override
  State<CustomerReviewAndRating> createState() =>
      _CustomerReviewAndRatingState();
}

class _CustomerReviewAndRatingState extends State<CustomerReviewAndRating> {
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
        body: Container(
          padding:
              const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 16.0, right: 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    margin: const EdgeInsets.only(right: 16.0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/profile1.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(44.0)),
                  ),
                  Expanded(
                    child: const Text(
                      "Jishad V",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      "4hr ago",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffA1A2A8)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right:145),
                child: SmoothStarRating(
                  size: 16.0,
                  starCount: 5,
                  rating: 3.5,
                  color: const Color(0xffF99F1E),
                  borderColor: const Color(0xffF99F1E),
                ),
              ),
              SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("“MY WORD FASHION” is very good shop,very good collections,\n good brands as well as very good customer service, Thanks\n Team!!",
                   maxLines: 3,
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 9,
                       color: Color(0xffA1A2A8),

                    ),),
              ),
            ],
          ),
        ));
  }
}
