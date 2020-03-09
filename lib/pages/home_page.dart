import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: IndexedStack(
          index: pageIdx,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 8, right: 8, bottom: 8),
                  child: Container(
                    height: screenHeight / 20,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_location,
                          color: Colors.red,
                        ),
                        Text(
                          "657-Mars, Milkway",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search for restaurant",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            child: Center(
                              child: Text(
                                "Delivery",
                                style: GoogleFonts.montserrat(),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Self pickup",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                  child: Container(
                    height: screenHeight / 4,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 8,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                  child: Container(
                    height: screenHeight / 12,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: screenHeight / 3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 2"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 3"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 4"),
                ),
              ],
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        currentIndex: pageIdx,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text("Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            title: Text("Go Out"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("Gold"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_queue),
            title: Text("Sneakpeek"),
          ),
        ],
      ),
    );
  }
}
