// import 'package:carousel/read_more-page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/card-carousel/read_more-page.dart';


class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'images/card_carouse11.png',
      'images/card_carouse11.png',
      'images/card_carouse11.png',
      'images/card_carouse11.png',
      'images/card_carouse11.png'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: ClipRRect(
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  top: 13,
                  left: 20,
                  child: Container(
                    child: Text(
                      "Article",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 40, 45),
                    child: Text(
                      "A good night's sleep is \nlike a reset button for \nthe mind and body",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),Positioned(
                  top: 80,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticlePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(64, 23),
                        backgroundColor: Color(0xff99AFD8)
                    ),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.9,
              viewportFraction: 1.0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
            items: imageSliders,
          ),
        ),
      ),
    );
  }
}


