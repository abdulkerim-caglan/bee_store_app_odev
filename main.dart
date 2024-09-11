import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  hintText: "Search Anything...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All ->",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(children: [
                    Image.asset(
                      "assets/fashion.png",
                      scale: 2.5,
                    ),
                    Text("Fashion")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/electronics.png",
                      scale: 2.5,
                    ),
                    Text("Electronics")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/appliances.png",
                      scale: 2.5,
                    ),
                    Text("Appliances")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/beauty.png",
                      scale: 2.5,
                    ),
                    Text("Beauty")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/fashion.png",
                      scale: 2.5,
                    ),
                    Text("Fashion")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/electronics.png",
                      scale: 2.5,
                    ),
                    Text("Electronics")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/appliances.png",
                      scale: 2.5,
                    ),
                    Text("Appliances")
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    Image.asset(
                      "assets/beauty.png",
                      scale: 2.5,
                    ),
                    Text("Beauty")
                  ]),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 16),
            //Slider
            SizedBox(
              width: 900,
              height: 300,
              child: PageView(
                controller: PageController(),
                children: [
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYW5yK3zWSKmtk_suP7TKyJrqGZs3YtB-bCA&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRekBsn_5hOTHXcg-v8yrjuiukY1tVHO4f1yw&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhJnfNDGtNlXV47m60rbB7BrZUqHJ5-L1uPw&s")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            // Geri kalan kısımlar
            Container(
              color: Color.fromRGBO(246, 246, 246, 1),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "Deal of the day",
                            style: TextStyle(
                              color: Color(0xFF1F2937),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                              letterSpacing: 0.07,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "View All ->",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 2,
                          ),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 239, 68, 68),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "1 DAY 23 HRS 14 MIN 39 SEC",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(13),
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.network(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGTlOtrUdfyGGoNyI9UUvfSudzrEVyfoOW-w&s"),
                                          Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text("Running Shoes"),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color.fromARGB(
                                                  255, 239, 68, 68),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Text(
                                                "Up to 40% OFF",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 170,
                                            width: 400,
                                            child: Image.network(
                                              "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/35184/uploads/urunresimleri/buyuk/5484-hakiki-deri-siyah-erkek-sneaker-a-a2371b.jpeg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text("Sneakers"),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color.fromARGB(
                                                  255, 239, 68, 68),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Text(
                                                "40-60% OFF",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 170,
                                              width: 400,
                                              child: Image.network(
                                                "https://torro.co.uk/cdn/shop/articles/torro-history-of-the-wristwatch.jpg?v=1655723776&width=2279",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Text("Wrist Watches"),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Color.fromARGB(
                                                    255, 239, 68, 68),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Up to 40% OFF",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 170,
                                              width: 400,
                                              child: Image.network(
                                                "https://cdn.thewirecutter.com/wp-content/media/2024/07/portablebluetoothspeakers-2048px-3321-2x1-1.jpg?width=2048&quality=75&crop=2:1&auto=webp",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Text("Bluetooth Speakers"),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Color.fromARGB(
                                                    255, 239, 68, 68),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  "Up to 40% OFF",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Hot Selling Footwear
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    "Hot Selling Footwear",
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All ->",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
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
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6218f8cc55984cfe92d1a96d0110ac7e_9366/Handball_Spezial_Ayakkabi_Siyah_DB3021_01_standard.jpg",
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/96d373e5-fe14-4ab8-8579-030e21713dcb/NIKE+AIR+MAX+PLUS+PRM.png",
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/5e7687f1-c13e-4bac-8ffa-a6f863ae9157/NIKE+DUNK+HI+RETRO.png",
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Recommended for you
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All ->",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
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
                    padding: EdgeInsets.all(11),
                    child: Image.network(
                      "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/12368/uploads/urunresimleri/buyuk/allen-heath-qu-32---32-kanal-dijital-mik-11af.jpg",
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/023/400/808/original/calvin-klein-brand-clothes-fashion-symbol-logo-design-illustration-with-gray-background-free-vector.jpg",
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: Image.network(
                      "https://assets.turbologo.com/blog/en/2021/07/07045753/hm-symbol-logo.png",
                      width: 150,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/tr/b/b1/Recep_%C4%B0vedik.jpg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(" Recep İvedik"),
                        Text("        +90 500 000 00 00")
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Shop by Categories"),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("My Order"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Favorites"),
            ),
            ListTile(
              leading: Icon(Icons.live_help_outlined),
              title: Text("FAQs"),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Adresses"),
            ),
            ListTile(
              leading: Icon(Icons.credit_card_rounded),
              title: Text("Saved Cards"),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file_outlined),
              title: Text("Term & Conditions"),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Color.fromARGB(50, 25, 155, 120),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
            backgroundColor: Color.fromARGB(50, 25, 155, 120),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: "Orders",
            backgroundColor: Color.fromARGB(50, 25, 155, 120),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: "Profile",
            backgroundColor: Color.fromARGB(50, 25, 155, 120),
          ),
        ],
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
