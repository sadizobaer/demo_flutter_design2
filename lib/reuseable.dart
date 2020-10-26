import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReCard extends StatelessWidget {
  ReCard({this.nimage,this.title,this.description});

  final nimage,title,description;

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height / 4;
    return Card(
      elevation: 2,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: hei*.55,
              width: hei*.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(nimage),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
                height: hei*.55,
                width: hei,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),),
                    SizedBox(height: 10,),
                    Text(description,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey,
                      ),),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
