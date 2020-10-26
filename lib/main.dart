import 'package:demo_work3/fullpage.dart';
import 'package:demo_work3/reuseable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

String data = 'It is a long established fact that the readable content of a page when looking at its layout.';
String data2 = 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable';
String title = 'Lorem Ipsum';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height / 4;
    return SafeArea(
      child: Column(
        children: [
          //header
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Contents',
                  style: GoogleFonts.lato(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //header stack view
          Padding (
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Stack(
              alignment: Alignment.bottomCenter,
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  child: Container(
                    height: hei,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image:DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://images.unsplash.com/photo-1520182205149-1e5e4e7329b4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1021&q=80')
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -hei/4,
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: hei*.4,
                        width: hei*1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('FEATURED',
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),),
                            Text('Why do we use it?',
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text('It is a long established fact that the content of a page when looking at its layout',
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          //tabbar
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 70),
            child: Container(
              height: 40,
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  indicatorColor: Colors.grey,
                  labelPadding: EdgeInsets.only(left: 8,right: 8),
                  indicatorPadding: EdgeInsets.only(left: 15,right: 15),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(5),
                          child: Text('Recommended'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('Popular'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('New Arrival'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Scrollable part
          Padding(
              padding:const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(
              height: hei*1.64,
              child: ListView(
                scrollDirection: Axis.vertical,
                children:[
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FullPage(
                          title: title,
                          description: data2,
                          nimage: 'https://images.unsplash.com/photo-1587497203441-4fd44b43caf8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=610&q=80',
                        ),),);
                      });
                    },
                      child: ReCard(description: data,title: title,nimage: 'https://images.unsplash.com/photo-1587497203441-4fd44b43caf8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=610&q=80',)),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FullPage(
                          title: title,
                          description: data2,
                          nimage: 'https://images.unsplash.com/photo-1587651318815-010732947bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                        ),),);
                      });
                    },
                      child: ReCard(description: data,title: title,nimage: 'https://images.unsplash.com/photo-1587651318815-010732947bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',)),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FullPage(
                          title: title,
                          description: data2,
                          nimage: 'https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                        ),),);
                      });
                    },
                      child: ReCard(description: data,title: title,nimage: 'https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',)),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FullPage(
                          title: title,
                          description: data2,
                          nimage: 'https://images.unsplash.com/photo-1502323777036-f29e3972d82f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                        ),),);
                      });
                    },
                      child: ReCard(description: data,title: title,nimage: 'https://images.unsplash.com/photo-1502323777036-f29e3972d82f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
