import 'package:find_flames/chats.dart';
import 'package:find_flames/likes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset("assets/prof.png"),
            Text("Find Flames",
                style: GoogleFonts.nunito(
                    color: Color.fromRGBO(255, 95, 143, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            Image.asset("assets/setting4.png")
          ]),
          backgroundColor: Color.fromRGBO(255, 246, 250, 1),
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/home.png"),
                label: "",
                tooltip: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/globalsearch.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/calendaredit.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/messages3.png"), label: ""),
          ],
          selectedItemColor: Colors.pinkAccent,
          currentIndex: 3,
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: Color.fromRGBO(255, 246, 250, 1),
                  width: 360,
                  height: 175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(20),
                    shrinkWrap: false,
                    itemExtent: 100,
                    children: [
                      Container(
                        width: 85,
                        height: 110,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 85,
                                  height: 98.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage("assets/likesp.png"),
                                    ),
                                  ))),
                          Positioned(
                              top: 94,
                              left: 10,
                              child: Container(
                                  width: 65,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ))),
                          Positioned(
                            top: 96,
                            left: 23,
                            child: Container(
                              child: Text(
                                "Likes",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    color: Color.fromRGBO(80, 80, 80, 1),
                                    fontSize: 12,
                                    height: 1),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 30,
                              left: 24,
                              child: Container(
                                  height: 60,
                                  child: Column(
                                    children: [
                                      Image.asset("assets/heart.png"),
                                      Text(
                                        "20",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunito(
                                            color: Colors.white,
                                            fontSize: 20,
                                            height: 1),
                                      )
                                    ],
                                  )))
                        ]),
                      ),
                      likes(name: "Tony", imageURL: "assets/tonyq.png"),
                      likes(name: "James", imageURL: "assets/james.png"),
                      likes(name: "Jordan", imageURL: "assets/jordan.png")
                    ],
                  ),
                )),
            Positioned(
              top: 170,
              left: 0,
              child: Container(
                  width: 358,
                  height: 745,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(20),
                    itemExtent: 80,
                    children: [
                      chatpg(
                          name: "Jordan",
                          imgURL: "assets/jordancircle.png",
                          msg: "Hii!",
                          nummsg: "1",
                          typing: false,
                          time: "13:10",
                          verified: true),
                      chatpg(
                          name: "Tim",
                          imgURL: "assets/tim.png",
                          msg: "Hii!",
                          nummsg: "0",
                          typing: false,
                          time: "13:10",
                          verified: true),
                      chatpg(
                          name: "James",
                          imgURL: "assets/jamescircle.png",
                          msg: "Hii!",
                          nummsg: "9+",
                          typing: true,
                          time: "13:10",
                          verified: false)
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
            ),
            Positioned(
                top: 150,
                left: 28,
                child: Container(
                    height: 45,
                    width: 304,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ], borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      cursorColor: Colors.grey,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.nunito(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 18,
                          ),
                          prefixIcon: Container(
                            child: Image.asset('assets/searchnormal1.png'),
                            width: 18,
                          )),
                    ))),
          ],
        ));
  }
}
