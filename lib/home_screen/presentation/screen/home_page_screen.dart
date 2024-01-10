import 'package:apotecth/home_screen/presentation/widget/carousel_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(247, 251, 255, 1.0);
    Color gradientColor1 = Color.fromRGBO(65, 87, 255, 1.0);
    Color gradientColor2 = Color.fromRGBO(61, 80, 231, 1.0);
    Color borderColor = Color.fromRGBO(9, 15, 71, 0.45);
    Color buttonTextColor = Color.fromRGBO(9, 15, 71, 0.95);
    Color backgroundWhite = Color.fromRGBO(247, 251, 255, 1.0);

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [gradientColor1, gradientColor2],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 20,
                          15), // Tambahkan padding horizontal sebesar 10
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage:
                                    AssetImage('assets/profile_image.jpg'),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Aksi yang ingin dilakukan ketika tombol ditekan
                                      },
                                      child: Image.asset(
                                          'images/notification2.png'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () {
                                          // Aksi yang ingin dilakukan ketika tombol ditekan
                                        },
                                        child:
                                            Image.asset('images/shopping.png'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Hi, Lorem',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Welcome to Apotech',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: backgroundWhite,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    // Button pertama

                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: InkWell(
                                          onTap: () {
                                            // Aksi yang ingin dilakukan ketika tombol ditekan
                                          },
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            elevation: 10,
                                            child: Container(
                                              height: 98,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 24,
                                                    backgroundColor: Colors.red,
                                                    child: Image.asset(
                                                        'images/dental.png'),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Dental',
                                                    style: TextStyle(
                                                      color: buttonTextColor,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),

                                    // Button ketiga
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: InkWell(
                                          onTap: () {
                                            // Aksi yang ingin dilakukan ketika tombol ditekan
                                          },
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            elevation: 10,
                                            child: Container(
                                              height: 98,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 24,
                                                    backgroundColor:
                                                        Colors.green,
                                                    child: Image.asset(
                                                        'images/wellness.png'),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Wellness',
                                                    style: TextStyle(
                                                      color: buttonTextColor,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),

                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: InkWell(
                                          onTap: () {
                                            // Aksi yang ingin dilakukan ketika tombol ditekan
                                          },
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            elevation: 10,
                                            child: Container(
                                              height: 98,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 24,
                                                    backgroundColor:
                                                        Colors.orange,
                                                    child: Image.asset(
                                                        'images/homeo.png'),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Homeo',
                                                    style: TextStyle(
                                                      color: buttonTextColor,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: InkWell(
                                          onTap: () {
                                            // Aksi yang ingin dilakukan ketika tombol ditekan
                                          },
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            elevation: 10,
                                            child: Container(
                                              height: 98,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 24,
                                                    backgroundColor:
                                                        Colors.blue,
                                                    child: Image.asset(
                                                        'images/eye.png'),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Eye Care',
                                                    style: TextStyle(
                                                      color: buttonTextColor,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: InkWell(
                                          onTap: () {
                                            // Aksi yang ingin dilakukan ketika tombol ditekan
                                          },
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            elevation: 10,
                                            child: Container(
                                              height: 98,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 24,
                                                    backgroundColor:
                                                        Colors.black,
                                                    child: Image.asset(
                                                        'images/skinHair.png'),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Skin & Hair',
                                                    style: TextStyle(
                                                      color: buttonTextColor,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                    // MyCarouselPage()
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                              child: Image.asset('images/heroImage.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Deals of the Day',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'More',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      minimumSize:
                                          MaterialStateProperty.all(Size(0, 0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Card(
                                      child: Container(
                                        height: 100,
                                        width: 185,
                                        child: Column(
                                          children: [
                                            Image.network(
                                                'https://example.com/image.jpg'),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Judul'),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                          color: Colors.yellow),
                                                      Text('4.5'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Card(
                                      child: Container(
                                        width: 185,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'images/phamacy1.png',
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Judul'),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                          color: Colors.yellow),
                                                      Text('4.5'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Tambahkan card lainnya di sini
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
            Positioned(
              top: 118,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Cari...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Ganti dengan warna border yang diinginkan
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
