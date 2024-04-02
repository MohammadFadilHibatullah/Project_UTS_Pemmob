import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S1AkuntansiDetailPage extends StatefulWidget {
  final String title;

  S1AkuntansiDetailPage (this.title);

  @override
  _S1AkuntansiDetailPageState createState() =>
      _S1AkuntansiDetailPageState();
}

class _S1AkuntansiDetailPageState extends State<S1AkuntansiDetailPage > {
  bool isProfilExpanded = false;
  bool isVisiExpanded = false;
  bool isMisiExpanded = false;
  bool isAkreditasiExpanded = false;
  bool isKetuaExpanded = false;
  bool isDosenExpanded = false;
  bool isWebsiteExpanded = false;
  bool isPrestasiExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 235, 252, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'akutan.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8), // Memberikan ruang di antara gambar dan teks
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 47.0),
                      child: Text(
                        'Program Studi S1 Akuntansi',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Memberikan ruang di antara judul dan informasi
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Profil', '', isProfilExpanded, Color.fromARGB(255, 235, 252, 1), Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Visi', '', isVisiExpanded, Color.fromARGB(255, 235, 252, 1), Icons.visibility),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Misi', '', isMisiExpanded, Color.fromARGB(255, 235, 252, 1), Icons.assignment),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Akreditasi', '', isAkreditasiExpanded, Color.fromARGB(255, 235, 252, 1), Icons.star),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Ketua Program Studi', '', isKetuaExpanded, Color.fromARGB(255, 235, 252, 1), Icons.person_pin),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Dosen', '', isDosenExpanded, Color.fromARGB(255, 235, 252, 1), Icons.school),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Laman Website Resmi', '', isWebsiteExpanded, Color.fromARGB(255, 235, 252, 1), Icons.language),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Prestasi Mahasiswa', '', isPrestasiExpanded, Color.fromARGB(255, 235, 252, 1), Icons.emoji_events),
              ),  
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExpansionTile(String title, String content, bool isExpanded, Color titleBackgroundColor, IconData icon) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 8.0), // Mengatur jarak antara setiap ExpansionTile
    child: Container(
      decoration: BoxDecoration(
        color: titleBackgroundColor, // Memberikan warna latar belakang untuk judul
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), // Melengkungkan sudut kiri atas
          topRight: Radius.circular(15), // Melengkungkan sudut kanan atas
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
          title: Row(
            children: [
              Icon(
                icon,
                color: const Color.fromARGB(255, 0, 0, 0), // Mengubah warna ikon menjadi putih
              ),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0), // Mengubah warna teks judul menjadi putih
                ),
              ),
            ],
          ),
        children: [
            Container(
              color: Colors.white, // Memberikan warna latar belakang untuk konten informasi
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isExpanded && title == 'Profil')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              'Program Studi Akuntansi didirikan pada tanggal 1 April 1966 dengan status kedinasan.Dalam perkembangannya, pada tanggal 29 November 1994, berdasarkan Surat Keputusan Bersama Menteri Pendidikan dan Kebudayaan Republik Indonesia dan Menteri Pertahanan Keamanan Republik Indonesia Nomor 0307/0/1994 dan KEP/10/Xl/1994, Program Studi Akuntansi berubah menjadi Perguruan Tinggi Swasta dengan memiliki status akreditasi.Pada tanggal 27 Februari 1995, Program studi Akuntansi ditetapkan menjadi status disamakan melalui Surat Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor 023/D/O/1995.Pada tanggal 29 Januari 2009, Program Studi Akuntansi memperoleh Akreditasi A dari BAN-PT Depdiknas Nomor: 039/BANPT/Ak-Xl/S1/l/2009. Setelah itu, berturut-turut pada tahun 2014 dan 2019, program studi Akuntansi berhasil mempertahankan Akreditasi A dari BAN-PT.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              'Menjadi Program Studi Akuntansi yang Unggul di bidang Ilmu Akuntansi yang Berkarakter Bela Negara pada tahun 2039',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
           if (isExpanded && title == 'Misi')
  Padding(
    padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildMisiItem('1. Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional.'),
        buildMisiItem('2. Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.'),
        buildMisiItem('3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.'),
        buildMisiItem('4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.'),
        buildMisiItem('5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.'),
        buildMisiItem('6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.'),
        buildMisiItem('7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.'),
      ],
    ),
  ),
                                                                                                                                                                               

          if (isExpanded && title == 'Akreditasi')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unggul melalui Penyertaan Akreditasi Internasional FIBAA',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'Laman Website Resmi')
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Website Resmi: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchWebsite();
                      },
                      child: Text(
                        'https://akuntansi.upnjatim.ac.id/',
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
          if (isExpanded && title == 'Ketua Program Studi')
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('ak.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Dr.Dra.Ec. Endah Susilowati, M.Si,CfRA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      'Ketua Program Studi S1 Akuntansi',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (isExpanded && title == 'Dosen')
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildGridItem('ak1.png', 'Dr. Hero Priono, S.E., M.Si., Ak., C.A., CMA'),
                    _buildGridItem('ak2.png', 'Dra. Ec. Dyah Ratnawati, MM.'),
                    _buildGridItem('ak3.png', 'Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA'),
                    _buildGridItem('ak4.png', 'ak_Prof. Dr. Sri Trisnaningsih, M.Si, CFrA.png'),
                    _buildGridItem('ak5.png', 'R. Muh. Syah Arief Atmaja Wijaya, SE., M.Sc.\n'),
                  ],
                ),
              ],
            ),
           if (isExpanded && title == 'Prestasi Mahasiswa')
  Padding(
    padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prestasi 1:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Nathanael Hizkia Ritonga (Akuntansi, 2019)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara I National Accounting Essay Competition 2022',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Prestasi 2:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Devy Julia Fitriani (Akuntansi, 2018)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara II Business Plan Competition IMAKO EXPO 2022',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
         Divider(), // Garis di antara setiap prestasi
        Text(
          'Prestasi 3:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Wirna Sofi Arini (Akuntansi, 2020)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Medali Emas Bidang Ekonomi dalam OSAN (Olimpiade Sains Akbar Nasional) 2022',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Prestasi 4:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Elvita Fitriana Sari (Akuntansi, 2019)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 3 Lomba Olimpiade Bahasa Inggris Tingkat Mahasiswa 2023 Diselenggarakan oleh CV. Divya Cahaya Prestasi Pada Tanggal 30 Juni-2 Juli 2023',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  ),

          if (isExpanded && content.isNotEmpty) // Menambahkan pengecualian untuk konten yang tidak kosong
            Padding(
              padding: EdgeInsets.only(left: 16.0), // Memberikan indentasi ke konten
              child: Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ),
        ],
         ),
              ),
            ),
          ],
        onExpansionChanged: (expanded) {
          setState(() {
            switch (title) {
              case 'Profil':
                isProfilExpanded = expanded;
                break;
              case 'Visi':
                isVisiExpanded = expanded;
                break;
              case 'Misi':
                isMisiExpanded = expanded;
                break;
              case 'Akreditasi':
                isAkreditasiExpanded = expanded;
                break;
              case 'Ketua Program Studi':
                isKetuaExpanded = expanded;
                break;
              case 'Dosen':
                isDosenExpanded = expanded;
                break;
              case 'Laman Website Resmi':
                isWebsiteExpanded = expanded;
                break;
              case 'Prestasi Mahasiswa':
                isPrestasiExpanded = expanded;
                break;
            }
          });
        },
      ),
    ),
    );
  }

  Widget _buildGridItem(String imagePath, String name) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String title, String content) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
  _launchWebsite() async {
    const url = 'https://akuntansi.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
Widget buildMisiItem(String content) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      content,
      style: TextStyle(fontSize: 16),
    ),
  );
}
