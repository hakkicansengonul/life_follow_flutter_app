import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:life_follow_flutter_app/Animation/Fade_Animation.dart';
import 'package:life_follow_flutter_app/Homedata/homedata_page_screen.dart';

class HomePage extends StatelessWidget {
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FadeAnimation(
                1.0,
                Row(
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
              1.2,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
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
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.3,
              Container(
                height: 260.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: HomePageContainerList.length,
                  itemBuilder: (context, index) {
                    return HomePageContainerList[index];
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.4,
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        todayPage(
                            "https://cdn.pixabay.com/photo/2014/04/03/11/52/drop-312396__480.png",
                            "Hydration",
                            "200 ml",
                            "6:00 AM"),
                        todayPage(
                            "https://cdn.pixabay.com/photo/2017/03/16/20/14/yoga-2150140__480.png",
                            "Yoga",
                            "40 min",
                            "7:30 AM"),
                        todayPage(
                            "https://cdn.pixabay.com/photo/2016/11/08/05/16/boy-1807518__480.jpg",
                            "meditation",
                            "60 min",
                            "8:15 AM"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class todayPage extends StatefulWidget {
  final String imgUrl;
  final String name0;
  final String name1;
  final String clock;

  const todayPage(this.imgUrl, this.name0, this.name1, this.clock);
  @override
  _todayPageState createState() => _todayPageState();
}

class _todayPageState extends State<todayPage> {
  bool newValue;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 70.0,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(widget.imgUrl), fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name0),
                Text(widget.name1),
              ],
            ),
            SizedBox(
              width: 30.0,
            ),
            Text(widget.clock),
          ],
        ),
      ),
      value: timeDilation != 1.0,
      onChanged: (value) async {
        setState(() {
          if (value) {
            timeDilation = 10.0;
          } else {
            timeDilation = 1.0;
          }
        });
      },
      secondary: const Icon(
        Icons.circle_notifications,
        size: 30.0,
      ),
    );
  }
}
