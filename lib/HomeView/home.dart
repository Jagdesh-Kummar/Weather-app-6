import 'package:flutter/material.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xff955cd1),
                  Color(0xff3fa2fa),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                borderRadius: BorderRadius.circular(40),
              ),
              height: size.height * .83,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // City Name
                  Center(
                    child: Text(
                      'City Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Current Date Time
                  Text(
                    'Jun 14 2001',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Weather Image
                  Image(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/04/18/18/56/cloud-3331240_1280.png'),
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Weather Info
                  Text(
                    'Partly Cloud',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Weahter Degree
                  Text(
                    '90C',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Wind',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '19.1 Km/h',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Humidity',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '181',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Wind Direction',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'SE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Gust',
                      style: TextStyle(
                          color: Color.fromARGB(255, 200, 196, 196),
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '189 Km/h',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Pressure',
                      style: TextStyle(
                          color: Color.fromARGB(255, 200, 196, 196),
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '1035 hpa',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Precipitation',
                      style: TextStyle(
                          color: Color.fromARGB(255, 200, 196, 196),
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '0.0 mm',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
