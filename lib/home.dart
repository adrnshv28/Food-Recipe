import 'package:flutter/material.dart';
import 'package:kelompok_recipe/indo.dart';
import 'package:kelompok_recipe/japan.dart';
import 'package:kelompok_recipe/western.dart';
import 'recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Drian\'s Book'),
            ],
          ),
        ),

        //agar bisa discroll untuk perangkat layar kecil
        body: SingleChildScrollView(
          child: Column(
            children: [
              // menambahkan teks Daftar Resep
              const SizedBox(height: 20),
              const Text(
                'Food Recipe\'s',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: judul.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                        //  navigasi ke halaman Makanan Indonesia
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Indo()));
                      } else if (index == 1) {
                        //  navigasi ke halaman Makanan Western
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Western()));
                      } else if (index == 2) {
                        // navigasi ke halaman Makanan Jepang
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Japan()));
                      }
                    },
                    //mengambil data array dan style dari recipe_card
                    child: RecipeCard(
                        title: judul[index],
                        cookTime: waktu[index],
                        rating: rate[index],
                        thumbnailUrl: gambar[index]),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

List<String> judul = <String>[
  'Indonesian Foods',
  'Western Foods',
  'Japanese Foods'
];
List<String> rate = <String>['4.5', '4.3', '4.5'];
List<String> waktu = <String>[
  '10-15 minutes',
  '10-25 minutes',
  '10-20 minutes'
];
List<String> gambar = <String>[
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/nasgor.jpg',
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/steak.jpg',
  'https://raw.githubusercontent.com/0xricoard/simple-recipe-app-flutter/master/assets/images/sushi.jpg'
];
