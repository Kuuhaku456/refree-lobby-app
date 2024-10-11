import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar untuk membuat desain responsif
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Mengatur ukuran berdasarkan proporsi
    final double padding = screenWidth * 0.015; // 1.5% dari lebar layar
    final double avatarRadius = screenWidth * 0.1; // 10% dari lebar layar
    final double buttonHeight = screenHeight *
        0.04; // Mengurangi tinggi tombol menjadi 4% dari tinggi layar
    final double buttonWidth = screenWidth *
        0.35; // Memperpendek lebar tombol menjadi 35% dari lebar layar

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,  // Mulai dari sudut kiri atas
            end: Alignment.bottomRight, // Berakhir di sudut kanan bawah
            colors: [
              Color(0xFF44D8BE),
              Color(0xFF0C1B22),  // Warna awal
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: padding + 20),
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white, width: 2), // Border putih
                        ),
                        child: CircleAvatar(
                          radius: avatarRadius -
                              13, // Ukuran diameter lingkaran responsif
                          backgroundColor:
                              Colors.transparent, // Warna latar belakang
                          child: IconButton(
                            icon: Icon(Icons.chevron_left),
                            color: Colors.white, // Warna ikon arrow
                            onPressed: () {
                              // Aksi ketika button diklik  
                              Get.back();
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: padding),
                      child: Container(
                        padding: EdgeInsets.all(padding),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ToggleButtons(
                          borderRadius: BorderRadius.circular(25),
                          borderWidth: 2,
                          borderColor: Colors.black,
                          selectedBorderColor: Colors.white,
                          selectedColor: Colors.black,
                          fillColor: Colors.white,
                          color: Colors.white,
                          isSelected: isSelected,
                          onPressed: (int index) {
                            setState(() {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                          constraints: BoxConstraints.expand(
                            width: buttonWidth, // Lebar tombol responsif
                            height: buttonHeight, // Tinggi tombol responsif
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: padding *
                                      0.5), // Mengurangi padding horizontal
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.people_alt),
                                  SizedBox(
                                      width: screenWidth *
                                          0.01), // 1% dari lebar layar
                                  Text('Line-Up'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: padding *
                                      0.5), // Mengurangi padding horizontal
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.chat_bubble_outline),
                                  SizedBox(
                                      width: screenWidth *
                                          0.01), // 1% dari lebar layar
                                  Text('Chat'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
