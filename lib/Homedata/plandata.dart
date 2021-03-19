import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

List PlandataContainerList = [
  PlandataContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2014/02/01/17/30/apple-256268__480.jpg",
    name1: "Fruits",
    name2: "2 apples a day",
    color: Colors.lightBlueAccent,
    newValue: 90,
  ),
  PlandataContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2016/03/26/22/28/person-1281607__480.jpg",
    name1: "meditasion",
    name2: "7 exersises",
    color: Colors.yellow,
    newValue: 45,
  ),
  PlandataContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2020/11/22/16/47/water-5767178__480.png",
    name1: "Hydration",
    name2: "6 cups a day",
    color: Colors.green,
    newValue: 75,
  ),
];

class PlandataContainer extends StatelessWidget {
  final String imgUrl;
  final String name1;
  final String name2;

  final Color color;
  final int newValue;

  const PlandataContainer(
      {this.imgUrl, this.name1, this.name2, this.color, this.newValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Material(
        child: Center(
          child: Container(
            //color: Colors.orange,
            height: 90.0,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name1,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          name2,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircularStepProgressIndicator(
                  totalSteps: 100,
                  currentStep: newValue,
                  stepSize: 5,
                  selectedColor: color,
                  unselectedColor: Colors.grey[200],
                  padding: 0,
                  width: 60,
                  height: 60,
                  selectedStepSize: 5,
                  roundedCap: (_, __) => true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
