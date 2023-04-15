import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatpg extends StatefulWidget {
  @override
  String name;
  String imgURL;
  String msg;
  String time;
  String nummsg;
  bool verified;
  bool typing;
  chatpg(
      {required this.name,
      required this.imgURL,
      required this.msg,
      required this.nummsg,
      required this.typing,
      required this.time,
      required this.verified});
  State<chatpg> createState() => _chatpgState();
}

class _chatpgState extends State<chatpg> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 310,
        height: 80,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(top: 20, left: 0, child: Image.asset(widget.imgURL)),
            Positioned(
                top: 20,
                left: 80,
                child: Container(
                    width: 90,
                    height: 30,
                    child: Row(
                      children: [
                        Text(widget.name,
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                color: widget.nummsg != "0"
                                    ? Color.fromRGBO(80, 80, 80, 1)
                                    : Color.fromRGBO(129, 129, 129, 1))),
                        widget.verified == true
                            ? Image.asset("assets/verify1.png")
                            : Text("")
                      ],
                    ))),
            Positioned(
              top: 22,
              left: 280,
              child: Text(widget.time,
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: widget.nummsg != "0"
                          ? Color.fromRGBO(80, 80, 80, 1)
                          : Color.fromRGBO(129, 129, 129, 1))),
            ),
            Positioned(
                top: 45,
                left: 80,
                child: widget.typing == false
                    ? Text(widget.msg,
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: widget.nummsg != "0"
                                ? Color.fromRGBO(80, 80, 80, 1)
                                : Color.fromRGBO(129, 129, 129, 1)))
                    : Text("Typing...",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Color.fromRGBO(255, 95, 143, 1),
                            fontStyle: FontStyle.italic))),
            Positioned(
                top: 40,
                left: 295,
                child: widget.nummsg != "0"
                    ? CircleAvatar(
                        child: Text(widget.nummsg,
                            style: GoogleFonts.nunito(
                                fontSize: 12, color: Colors.white)),
                        radius: 10,
                        backgroundColor: Color.fromRGBO(255, 95, 143, 1))
                    : Text("")),
          ],
        ));
  }
}
