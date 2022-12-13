import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Divider(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                SingleChildScrollView(
                    child: Container(
                      height: 500,
                      child: ListView.builder(
                        itemCount:2,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(child: Text("HELLO WORLD"));
                        },
                      ),
                    ))
              ],
            ),
          ),
        ),);
  }
}
