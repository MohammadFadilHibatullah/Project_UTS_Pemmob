import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DatadiriDetailPage extends StatelessWidget {
  final String title;

  DatadiriDetailPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 235, 252, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('p.jpg'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 16),
              Text(
                'Mohammad Fadil Hibatullah',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              buildInfoRow('Tanggal Lahir', '02 Mei 2004'),
              buildInfoRow('Alamat', 'Desa Krajan\nKecamatan Sumber Malang\nKabupaten Situbondo\nProvinsi Jawa Timur'),
              buildInfoRow('No. HP', '085608512223'),
              buildInfoRow('Email', '22082010001@student.upnjatim.ac.id'),
              buildGithubLinkRow('URL Profil Github', 'https://github.com/MohammadFadilHibatullah'),
              buildInfoRow('Riwayat Pendidikan', '1. SDN 3 TLOGOSARI (2010-2016)\n2. SMPN 1 SUMBER MALANG (2017-2019)\n3. SMAN 1 BESUKI (2020-2022)\n4. UPN "Veteran" JAWA TIMUR (2022-Saat ini)'),
              buildInfoRow('Penghargaan', '1. Juara 3 Band Tingkat Kabupaten (2021)'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget buildGithubLinkRow(String title, String githubUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 4),
          InkWell(
            onTap: () {
              _launchURL(githubUrl);
            },
            child: Text(
              githubUrl,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
