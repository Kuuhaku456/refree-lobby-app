import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:referee_app/widget/add_home_refree.dart';

class MyLobbyHome extends StatelessWidget {
  const MyLobbyHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar untuk membuat desain responsif
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            height: screenHeight - 300,
            color: Colors.transparent,
            padding: EdgeInsets.all(0),
            child: ListView(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 11,
                  margin: EdgeInsets.only(left: screenWidth / 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyAddRefree(
                        onTap: () {},
                        name: "Saiful Bukhari", 
                        pathimage: "assets/photo_1.jpg"
                      ),
                      MyAddRefree(
                        onTap: () {},
                        name: "Saiful Bukhari", 
                        pathimage: "assets/photo_1.jpg"
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
