import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .6,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  hintText: 'search Product',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_alarm_outlined))
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Container(
          child: CarouselSlider.builder(
              itemCount: 7,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        width: 350,
                        height: 200,
                        child: Image.asset('images/Promotion Image.png'),
                      ),
              options: CarouselOptions(autoPlay: true)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'More Category',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 30,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.asset('images/shirt.png'),
                      ),
                    ),
                    Text('User')
                  ],
                ),
              );
            },
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            width: 500,
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEBF0FF)),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/image Product.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'FS - Nike Air',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '\$240',
                            style: TextStyle(color: Colors.red),
                          )
                        ]),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          width: 500,
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBF0FF)),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/image Product.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'FS - Nike Air',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$240',
                          style: TextStyle(color: Colors.red),
                        )
                      ]),
                ),
              );
            },
          ),
        ),
        Stack(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/Promotion Image.png',
              ),
            )),
            Container(
              margin: EdgeInsets.all(40),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Recomended\nProduct',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'we recommend the best for you',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
                mainAxisSpacing: 20),
            itemCount: 4,
            itemBuilder: ((context, index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(
                        0xffEBF0FF,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Image.asset('images/image Product.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nike Air Max 270 React ENG',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              );
            }))
      ]),
    );
  }
}
