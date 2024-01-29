// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Western extends StatefulWidget {
  const Western({super.key});

  @override
  ParentState createState() {
    return ParentState();
  }
}

class ParentState extends State<Western> {
  void increment() {
    setState(() {
      if (indeksResep >= ingredients.length - 1) {
        indeksResep = 0;
      } else {
        indeksResep++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Recipe',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Western Foods'),
            backgroundColor: Colors.green,
            leading: BackButton(
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),

          //widget kolom
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text(
                      title[indeksResep],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                Container(
                  width: 390,
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imagesrc[indeksResep]))),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(ingredients[indeksResep],
                      style: const TextStyle(fontSize: 19),
                      textAlign: TextAlign.justify),
                )
              ],
            ),
          ),
          floatingActionButton: Container(
            height: 35,
            width: 98,
            child: FloatingActionButton.extended(
              onPressed: () {
                increment();
              },
              label: const Text('Next', style: TextStyle(fontSize: 18)),
              icon: const Icon(Icons.navigate_next),
              backgroundColor: Colors.green,
            ),
          ),
        ));
  }
}

//Data Array Resep
const title = ['Krabby Patty', 'Sirloin Steak'];
const imagesrc = [
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/hamburger.jpg',
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/steak.jpg'
];
const ingredients = [
  '''Bahan:
- 1/2kg Daging sapi giling
- 4 Roti tawar
- 1/2 Bawang bombay, iris
- 2 Batang daun selada, iris tipis
- 1/4 Wortel, iris tipis
- Saus tomat secukupnya
- Saus mustard secukupnya
- Saus mayones secukupnya
- Keju parut secukupnya

Cara Membuat:
1. Pertama-tama, bentuk daging giling menjadi 4 buah burger patties yang berukuran sama
2. Panaskan griddle atau wajan dengan api sedang-kecil
3. Kemudian panggang burger patties selama 3-4 menit per sisi, atau sampai terlihat matang
4. Sementara itu, panaskan roti tawar di atas griddle atau wajan yang sama selama 1-2 menit per sisi, atau sampai terlihat renyah
5. Setelah burger patties dan roti tawar matang, susun roti tawar di atas piring
6. Tuangkan saus tomat di atas roti tawar bagian bawah, kemudian tambahkan burger patty, bawang bombay, daun selada, wortel, saus mustard, dan saus mayones
7. Tutup dengan roti tawar bagian atas, kemudian taburi keju parut di atasnya
8. Sajikan hamburger sederhana yang sudah jadi bersama dengan kentang goreng atau sayuran segar sebagai pelengkap.
''',
  '''Bahan:
- 250g Daging sirloin, potong sesuai selera
- 1 Sdt Garam
- 1 Sdt Lada hitam
- 1 Sdt Merica bubuk
- 1 Sdt Paprika bubuk
- 2 Sdm Minyak sayur
- 1 Sdt Unsalted butter

Cara Membuat:
1. Campur garam, lada hitam, merica bubuk, dan paprika bubuk dalam sebuah wadah kecil
2. Kemudian usapkan campuran tersebut ke seluruh permukaan daging sirloin
3. Panaskan minyak sayur di dalam wajan atau skillet dengan api sedang-tinggi
4. Kemudian masukkan daging sirloin ke dalam wajan, lalu panggang selama 3-4 menit per sisi, atau sampai terlihat matang sesuai selera
5. Setelah matang, angkat daging sirloin dari wajan dan sisihkan
6. Tambahkan butter ke dalam wajan yang sama, lalu tambahkan bawang bombay dan bawang putih yang sudah diiris tipis-tipis
7. Tumis selama 2-3 menit, atau sampai bawang bombay dan bawang putih terlihat layu.
8. Kemudian tambahkan saus tiram dan saus Worcestershire ke dalam wajan, lalu aduk rata
9. Kemudian masukkan kembali daging sirloin ke dalam wajan, lalu tambahkan juga irisan daun bawang dan seledri ke dalam saus, aduk rata
10. lalu masak selama 1-2 menit, atau sampai saus mengental dan daging sirloin terlihat empuk.
11. Angkat daging sirloin dari wajan, lalu sajikan bersama dengan nasi putih atau bahan pelengkap lainnya sesuai selera.'''
];
// Akhir data Array Resep

int indeksResep = 0;
