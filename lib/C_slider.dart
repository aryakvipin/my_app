import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CarosalPage()));
}

class CarosalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: CarouselSlider(
        items: [
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayCurve: Curves.bounceInOut,
            autoPlayAnimationDuration: Duration(microseconds: 1000),
            enableInfiniteScroll: true,
            viewportFraction: 4),
      ),
    );
  }
}
