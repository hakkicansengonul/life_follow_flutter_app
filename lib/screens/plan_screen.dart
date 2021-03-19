import 'package:flutter/material.dart';
import 'package:life_follow_flutter_app/Animation/Fade_Animation.dart';
import 'package:life_follow_flutter_app/Homedata/plandata.dart';

class PlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 33.0,
                        ),
                        onPressed: () {}),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 3.0,
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Plan",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 33.0,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 430.0,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: PlandataContainerList.length,
                  itemBuilder: (context, index) {
                    return PlandataContainerList[index];
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1.0,
                    Text(
                      "Weekly Challenge",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    //color: Colors.blueAccent,
                    height: 40.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // color: Colors.deepOrange
                    ),
                    child: FadeAnimation(
                      1.1,
                      Row(
                        children: [
                          weeklyContainer("Mon", 0),
                          weeklyContainer("Tue", 0),
                          weeklyContainer("Wed", 0),
                          weeklyContainer("Thu", 0),
                          weeklyContainer("Fri", 1),
                          weeklyContainer("Sat", 2),
                          weeklyContainer("Sun", 2),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FadeAnimation(
                    1.2,
                    Padding(
                      padding: EdgeInsets.only(right: 70.0, left: 10.0),
                      child: Container(
                        height: 100.0,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.orange,
                                  ),
                                  height: 10.0,
                                  width: 10.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("72% Completion"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  height: 10.0,
                                  width: 10.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("2 days left"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget weeklyContainer(String title, int newValue) {
  return Padding(
    padding: EdgeInsets.only(left: 7.0),
    child: Container(
      height: 50.0,
      width: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            //topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          color: newValue == 0
              ? Colors.yellow
              : newValue == 1
                  ? Colors.blue
                  : Colors.grey),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white),
      )),
    ),
  );
}
