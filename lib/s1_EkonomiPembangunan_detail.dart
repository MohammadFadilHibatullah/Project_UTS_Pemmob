import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S1EkonomiPembangunanDetailPage extends StatefulWidget {
  final String title;

  S1EkonomiPembangunanDetailPage(this.title);

  @override
  _S1EkonomiPembangunanDetailPageState createState() =>
      _S1EkonomiPembangunanDetailPageState();
}

class _S1EkonomiPembangunanDetailPageState extends State<S1EkonomiPembangunanDetailPage> {
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
                    'epp.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8), // Memberikan ruang di antara gambar dan teks
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 47.0),
                      child: Text(
                        'Program Studi S1 Ekonomi Pembangunan',
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
                color: const Color.fromARGB(255, 2, 1, 1), // Mengubah warna ikon menjadi putih
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
              'Program Studi Ekonomi Pembangunan Fakultas Ekonomi dan Bisnis UPNV Jawa Timur didirikan pada tahun 1974 dengan status "Negeri Kedinasan". Pada tahun 1994, statusnya berubah menjadi Perguruan Tinggi Swasta. Prodi ini pertama kali diakreditasi pada tahun 2003 dengan nilai B dan terakhir diakreditasi pada tahun 2017 dengan nilai A. Pada tahun 2021, prodi ini mendapatkan pengakuan Internasional melalui Akreditasi Internasional FIBAA yang berlaku hingga tahun 2026. Program studi ini memiliki tiga konsentrasi/minat: Perencanaan Pembangunan Daerah, Moneter dan Perbankan, serta Investasi dan Perdagangan Internasional. UPNV Jawa Timur berusaha meningkatkan kualitas lulusan dengan peningkatan sarana dan prasarana, sumber daya manusia, kurikulum, dan kerjasama dengan pemerintah dan swasta. ',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '“Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki kareakter bela negara.”',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Misi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '1. Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.\n'
              '2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat.\n'
              '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n'
              '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\n'
              '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.\n'
              '6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.\n',
              
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
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
                        'https://ekbang.upnjatim.ac.id/',
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
                          image: AssetImage('ep.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'DRA. EC. NINIEK IMANINGSIH, MP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      'Ketua Program Studi S1 Ekonomi Pembangunan',
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
                    _buildGridItem('ep1.jpg', 'Dr. Ignatia Martha, S.E., M.E.'),
                    _buildGridItem('ep2.jpg', 'Dr. Muchtolifah, S.E., M.P.'),
                    _buildGridItem('ep3.jpg', 'Dra. Ec. Niniek Imaningsih, M.P.'),
                    _buildGridItem('ep4.jpg', 'Drs. Ec. Arief Bachtiar, M.Si.'),
                    _buildGridItem('ep5.jpeg', 'Prof. Dr. Syamsul Huda, S.E., M.T.'),
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
          'Nadia Afny Zuraida (Ekonomi Pembangunan, 2020)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Best Speaker National Business Plan Competition',
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
          'Azzahra Zulfalinda (Ekonomi Pembangunan, 2020)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Best Team Annual National Business Plan Competition',
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
    const url = 'https://ekbang.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
