import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SliderDemo());
}

// ignore: must_be_immutable
class SliderDemo extends StatelessWidget {
  SliderDemo({super.key});

  List<String> imageList = [
    "https://img.freepik.com/free-photo/beautiful-forest-with-green-grass-daytime_181624-13820.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721606400&semt=ais_user",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-jLcd2eI7x7Pyz-keK-00mr-EZFWdRMlFow&s",
    "https://img.freepik.com/free-photo/beautiful-forest-with-green-grass-daytime_181624-13820.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721606400&semt=ais_user",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-jLcd2eI7x7Pyz-keK-00mr-EZFWdRMlFow&s",
    "https://img.freepik.com/free-photo/beautiful-forest-with-green-grass-daytime_181624-13820.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1721606400&semt=ais_user",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Slider Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 300,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  reverse: false,
                  aspectRatio: 5,
                ),
                itemBuilder: (context, i, index) {
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          imageList[i],
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      var url = imageList[i];
                    },
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
