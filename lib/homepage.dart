// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // sliver app bar
          SliverAppBar(
              expandedHeight: 735,
              backgroundColor: Colors.white.withOpacity(0),
              leading: Icon(Icons.menu),
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                centerTitle: false,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text("YOUR TEXT", textAlign: TextAlign.left),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
                background: Image.asset("assets/green.jpg", fit: BoxFit.cover),
              )),

          // sliver items 1
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                  bottom: 60,
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 207, 217)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        image: AssetImage("assets/green.jpg")),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Text 1',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 100, right: 50),
                                      child: Text(
                                        'Text 1',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                )),
          ),

          // sliver items 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  color: Color.fromARGB(255, 57, 208, 225),
                  height: 130,
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Text here',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // sliver items 3
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Color.fromARGB(255, 110, 199, 209),
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 4
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Color.fromARGB(255, 110, 199, 209),
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 5
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Color.fromARGB(255, 110, 199, 209),
                  height: 150,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
