import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 's1_EkonomiPembangunan_detail.dart';
import 's1_Akuntansi_detail.dart';
import 's1_Kewirausahaan_detail.dart';
import 's1_Manajemen_detail.dart';
import 's2_Manajemen_detail.dart';
import 'datadiri_detail.dart';
import 'datadiri2_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Ekonomi dan Bisnis',
      home: ProfilFakultasPertanian(),
    );
  }
}

class ProfilFakultasPertanian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fakultas Ekonomi dan Bisnis',
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), // Warna teks judul AppBar
        ),
        backgroundColor: Color.fromARGB(255, 235, 252, 1), // Warna AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Profil Fakultas Ekonomi dan Bisnis UPN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Fakultas Ekonomi dan Bisnis merupakan salah satu dari 7 Fakultas di UPN "Veteran" Jawa Timur. Yang terdiri dari program studi:',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Card untuk Program Studi S1 ekonomi pembangunan
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1EkonomiPembangunanDetailPage('Program Studi S1 Ekonomi Pembangunan')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('epp.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S1 Ekonomi Pembangunan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S1 akuntansi
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1AkuntansiDetailPage ('Program Studi S1 Akuntansi')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('akutan.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S1 Akuntansi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S1 Kewirausahaan
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1KewirausahaanDetailPage('Program Studi S1 Kewirausahaan')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('kwulo.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S1 Kewirausahaan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S1 Manajemen
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1ManajemenDetailPage('Program Studi S1 Manajemen')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('man.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S1 Manajemen',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S2 Manajemen
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S2ManajemenDetailPage('Program Studi S2 Manajemen')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('man.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S2 Manajemen',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ), 
            SizedBox(height: 16), // Menambahkan jarak di bawah terakhir agar ada ruang untuk guliran
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 2, // Tinggi garis horizontal, tetapi diatur ke nilai 0 sehingga tidak terlihat
                color: Colors.transparent, // Warna garis diatur menjadi transparan
              ),
            ),
            SizedBox(height: 8), // Menambahkan jarak antara garis dan teks
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),  
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

                                                                                                                                                          
            SizedBox(height: 8),
            // Card untuk data profil
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // Mengatur posisi widget secara horizontal dengan ruang di sekitar widget
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DatadiriDetailPage('Profil')),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        color: const Color.fromRGBO(255, 255, 255, 1), // Warna latar belakang Card
        elevation: 4, // Elevation untuk efek shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Mengatur sudut border
          side: BorderSide(
            color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
            width: 2, // Ketebalan garis tepi
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar
              CircleAvatar(
                radius: 40, // Radius lingkaran
                backgroundImage: AssetImage('p.jpg'), // Gambar
              ),
              SizedBox(height: 8), // Menambahkan jarak antara foto dan teks
              // Nama
              Text(
                'Mohammad Fadil Hibatullah',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Datadiri2DetailPage('Profil')),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        color: const Color.fromRGBO(255, 255, 255, 1), // Warna latar belakang Card
        elevation: 4, // Elevation untuk efek shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Mengatur sudut border
          side: BorderSide(
            color: Color.fromARGB(255, 235, 252, 1), // Warna garis tepi
            width: 2, // Ketebalan garis tepi
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar
              CircleAvatar(
                radius: 40, // Radius lingkaran
                backgroundImage: AssetImage('am.jpg'), // Gambar
              ),
              SizedBox(height: 8), // Menambahkan jarak antara foto dan teks
              // Nama
              Text(
                '    Amanda Putri Azzahra    ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
),

 SizedBox(height: 16), // Menambahkan jarak di bawah terakhir agar ada ruang untuk guliran
SizedBox(height: 8),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Container(
    height: 2, // Tinggi garis horizontal, tetapi diatur ke nilai 0 sehingga tidak terlihat
    color: Colors.transparent, // Warna garis diatur menjadi transparan
  ),
),
SizedBox(height: 8), // Menambahkan jarak antara garis dan teks
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Website Resmi',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

SizedBox(height: 8),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                'Link : ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  _launchURL();
                },
                child: Text(
                  'https://febis.upnjatim.ac.id/',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
  
  

  _launchURL() async {
    const url = 'https://febis.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}