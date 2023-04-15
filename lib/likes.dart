import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class likes extends StatefulWidget {
  String name;
  String imageURL;

  @override
  likes({required this.name, required this.imageURL});
  State<likes> createState() => _likesState();
}

class _likesState extends State<likes> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      image: AssetImage(widget.imageURL),
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
              left: 18,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        color: Color.fromRGBO(80, 80, 80, 1),
                        fontSize: 12,
                        height: 1),
                  ),
                  Image.asset("assets/verify.png")
                ],
              ))),
        ]));
  }
}
