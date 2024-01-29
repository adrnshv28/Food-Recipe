// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Japan extends StatefulWidget {
  const Japan({super.key});

  @override
  ParentState createState() {
    return ParentState();
  }
}

class ParentState extends State<Japan> {
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
            title: const Text('Japanese Foods'),
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
                  ),
                ),
                Container(
                  width: 390,
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill,
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
              backgroundColor: Colors.green,
            ),
          ),
        ));
  }
}

//Data Array Resep
const title = ['Sushi', 'Ramen'];
const imagesrc = [
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/sushi.jpg',
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/ramen.jpg',
];
const ingredients = [
  '''Bahan:
- Nasi hangat
- Tambahkan sedikit garam
- Kulit nori
- Ikan tuna
- Telur dadar
- Wortel
- Timun
- 2 Sdm Kecap asin

Cara Membuat:
1. Panaskan minyak goreng di wajan
2. Tumis daun bawang hingga harum
3. Tambahkan wortel dan tumis sebentar
4. Tambahkan nasi dingin, merica putih, kecap asin dan aduk hingga rata
5. Tambahkan telur yang sudah dikocok lepas. Lalu Aduk hingga tercampur rata
6. Angkat dan sajikan. Bisa ditaburi dengan minyak wijen di atasnya jika suka
''',
  '''Bahan:
- 140g mie telur
- 1 buah wortel
- 1/4 buah kol potong-potong
- 1 batang daun bawang diiris
- 1 batang seledri diiris
- 5 siung bawang merah
- 3 siung bawang putih
- 3 buah cabai rawit
- Kecap manis, garam, dan kaldu jamur secukupnya
- Bawang goreng sebagai taburan

Cara Membuat:
1. Rebus mie telur sampai setengah matang. Lalu angkat dan tiriskan
2. Haluskan bawang merah, bawang putih, dan merica
3. Panaskan sedikit minyak lalu tumis bumbu halus
4. Masukkan wortel, kol, daun bawang, dan seledri. Aduk hingga rata
5. Masukkan cabai rawit
6. Masukkan mie. 
7. Tambahkan garam, kaldu jamur, dan kecap manis. Aduk hingga rata. Koreksi rasa
8. Masak hingga bumbu meresap.
9. Angkat dan sajikan dengan bawang goreng'''
];
// Akhir data Array Resep

int indeksResep = 0;
