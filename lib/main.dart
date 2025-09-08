import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

  // widget button section
  Color color = Theme.of(context).primaryColor;
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // ini adalah method instance yang harus dipanggil setelah 
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE')
    ],
  );

  // widget text section
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Tambahkan nama dan NIM Anda sebagai '
    'identitas hasil pekerjaan Anda. '
    'Selamat mengerjakan 🙂.',
    softWrap: true,
    ),
  );

  return MaterialApp(
      title: "Flutter layout: Muhamad Abdul Ghofur_362458302016",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/tempat_wisata.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover
            ),
            titleSection,
            buttonSection,
            textSection
        ]),
      ));
  }

  // title row
  Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Baru',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Banyuwangi, Indonesia",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          const Text("41")
        ],
      ));

  // column icon text customable
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color)),
        )
      ],
    );
  }
}
