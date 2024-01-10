import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class MyCarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterCarousel.builder(
        // Tinggi carousel
        itemCount: 3, // Jumlah item dalam carousel
        itemBuilder: (BuildContext context, int index, int realIndex) {
          // Membangun widget untuk setiap item dalam carousel
          return Container(
            color: index == 0
                ? Colors.red
                : index == 1
                    ? Colors.blue
                    : Colors.green,
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          );
        },
        options: CarouselOptions(
          // Konfigurasi opsi carousel
          height: 200,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
