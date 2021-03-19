import 'package:flutter/material.dart';

List HomePageContainerList = [
  HomePageContainer(
      "https://cdn.pixabay.com/photo/2019/03/27/13/48/marathon-4085048__480.jpg"),
  HomePageContainer(
      "https://cdn.pixabay.com/photo/2016/09/18/14/21/swimmer-1678307__480.jpg"),
];

class HomePageContainer extends StatelessWidget {
  final String imgUrl;

  const HomePageContainer(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Container(
          height: 260.0,
          width: 360.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20.0),
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The future\nof healthy\nlifestyle.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Read",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
