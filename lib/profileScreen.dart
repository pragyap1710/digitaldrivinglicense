// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Color.fromARGB(204, 41, 136, 89),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
           appBar: AppBar(
            title: const Text('Digtial Driving License'),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.logout)),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                children: [
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Pragya Pandit',
                                      style: TextStyle(
                                        color: Color.fromARGB(204, 41, 136, 89),
                                        fontFamily: 'Helvetica',
                                        fontSize: 37,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Category: ',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Helvetica',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              'A,B',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    39, 105, 171, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'License Number:',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Helvetica',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              '09020269201',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    39, 105, 171, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 170,
                              right: 40,
                              child: IconButton(
                                color: Colors.orange[700],
                                onPressed: () {
                                  Navigator.pushNamed(context, '/fine');
                                },
                                 icon: Icon(Icons.money_off,size: 35,)),
                              ),
                            Positioned(
                              top: 150,
                              left: 0,
                              right: 320,
                              child: Center(
                                child: Image.asset(
                                  height: 90,
                                  'assets/img/profile.png',
                                  width: 90,
                                  // fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'QR',
                            style: TextStyle(
                              color: Color.fromARGB(204, 41, 136, 89),
                              fontSize: 27,
                              fontFamily: 'Helvetica',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset('assets/img/qrCode.png'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
