import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'My Portfolio',
          style: TextStyle(
              color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30),
        ),
        leading: PopupMenuButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton(
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'about');
                    },
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    child: Text(
                      'Work',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'project');
                    },
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    child: Text(
                      'Achievements',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'Achievement');
                    },
                  ))
                ]),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/IMG_20211030_194602-removebg-preview.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.70),
              child: Column(
                children: [
                  Text(
                    'UTKARSH MISHRA',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(Flutter Devloper)',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => buildsheet());
                      },
                      icon: Icon(
                        Icons.check_box,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

mydeal(num, type) {
  return Row(
    children: [
      Text(
        num,
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Container(
        margin: EdgeInsets.only(top: 8.0),
        child: Text(
          type,
          style: TextStyle(color: Colors.white),
        ),
      )
    ],
  );
}

mySpecliaztion(Icons, name) {
  return Container(
    height: 90.0,
    width: 90.0,
    child: Card(
      color: Color.fromARGB(255, 62, 62, 62),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          )
        ]),
      ),
    ),
  );
}

Widget buildsheet() => Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 400,
        margin:
            EdgeInsets.only(left: 20.0, right: 10.0, top: 25.0, bottom: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mydeal('1', 'Project'),
                mydeal('0', 'Clients'),
                mydeal('0', 'Messages'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Specialized In',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
             SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecliaztion(Icons.html, 'HTML'),
                          mySpecliaztion(Icons.css, 'CSS'),
                          mySpecliaztion(Icons.add, 'C language'),
                        ],
                      ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecliaztion(Icons.add, 'C++'),
                          mySpecliaztion(Icons.add, 'dart'),
                          mySpecliaztion(Icons.add, 'FLUTTER'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecliaztion(Icons.add, 'Acting'),
                          mySpecliaztion(Icons.add, 'Singing'),
                          mySpecliaztion(Icons.add, ''),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
