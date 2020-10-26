import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullPage extends StatelessWidget {
  FullPage({this.nimage,this.title,this.description});

  final nimage,title,description;


  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height / 4;
      return Scaffold(
          body: SafeArea(
            child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                child: Container(
                  height: hei*2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    image:DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(nimage)
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -hei*1.8,
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(50) ),
                      ),
                      height: hei*1.8,
                      width: hei*1.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                            style: GoogleFonts.lato(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(description,
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),),
                          SizedBox(height: 20,),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            thickness: 3.0,
                            color: Colors.blueGrey[200],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                height: hei/2,
                                width: hei*.85,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('24 reactions',
                                      style: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text('10 likes & 14 wow',
                                        style: GoogleFonts.lato(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: hei/2,
                                width: hei*.85,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('14 Comments',
                                        style: GoogleFonts.lato(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),),
                                      SizedBox(height: 10,),
                                      Text('Shuvo and 13 others comented',
                                        style: GoogleFonts.lato(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
        ),
          ),
      );
  }
}
