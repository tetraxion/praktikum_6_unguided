import 'package:flutter/material.dart';
import 'package:praktikum_6_unguided/RecipeFood/bakso.dart';
import 'package:praktikum_6_unguided/RecipeFood/gadoGado.dart';
import 'package:praktikum_6_unguided/RecipeFood/lontongKupang.dart';
import 'package:praktikum_6_unguided/RecipeFood/nasiGudeg.dart';
import 'package:praktikum_6_unguided/RecipeFood/nasiPadang.dart';
import 'package:praktikum_6_unguided/RecipeFood/nasiRames.dart';
import 'package:praktikum_6_unguided/RecipeFood/papeda.dart';
import 'package:praktikum_6_unguided/RecipeFood/rawon.dart';
import 'package:praktikum_6_unguided/RecipeFood/segoGegok.dart';
import 'package:praktikum_6_unguided/RecipeFood/soto.dart';
import 'package:praktikum_6_unguided/buildCard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RecipeFood(),
  ));
}

class RecipeFood extends StatefulWidget {
  RecipeFood({super.key});

  @override
  State<RecipeFood> createState() => _RecipeFoodState();
}

class _RecipeFoodState extends State<RecipeFood> {
  
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 200, 253, 255),
        appBar: AppBar(
          title: const Text("RecipeFood"),
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            controller: _scrollController,
            children: [
              buildCardFood(
                  "Gado-gado",
                  5,
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Gado_gado_jakarta.jpg/800px-Gado_gado_jakarta.jpg",
                  "Gado-gado adalah hidangan khas Indonesia yang terdiri dari berbagai macam sayuran segar seperti kubis, kacang panjang, tauge, dan lainnya.",
                  context,
                  gadoGado()),
              buildCardFoodOne(
                  "Lontong Kupang",
                  3,
                  "assets/image/kupang.jpeg",
                  "Lontong Kupang adalah hidangan ini memiliki ciri khas berupa lontong (nasi ketan yang dikukus dalam daun kelapa) yang disajikan dengan kuah yang khas dan berisi kerang-kerangan serta udang.",
                  context,
                  lontongKupang()),
              buildCardFood(
                  "Nasi Gudeg",
                  4,
                  "https://cdn1-production-images-kly.akamaized.net/HGNqSti6M6X29hfPSlFkqPJc0go=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/776636/original/012158200_1417956101-gudeg.jpg",
                  "Nasi Gudeg adalah hidangan ini terdiri dari nasi yang disajikan bersama dengan Gudeg, sebuah masakan yang terbuat dari nangka muda yang dimasak dengan bumbu khusus, santan, dan gula Jawa.",
                  context,
                  nasiGudeg()),
              buildCardFood(
                  "Nasi Padang",
                  5,
                  "https://awsimages.detik.net.id/community/media/visual/2019/04/24/de2758a6-ea38-4ae9-8c4b-f2b395a81a22_43.png?w=600&q=90",
                  "Nasi Padang adalah hidangan ini terdiri dari nasi putih yang disajikan bersama dengan berbagai hidangan lauk-pauk dan saus yang khas dari Padang. ",
                  context,
                  nasiPadang()),
              buildCardFood(
                  "Nasi Rames",
                  3,
                  "https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/67b99d37-515c-4b7e-8e38-233e112633fe_Go-Biz_20210920_085639.jpeg",
                  "Nasi Rames adalah hidangan ini umumnya terdiri dari nasi putih yang disajikan bersama dengan berbagai hidangan lauk-pauk dan saus, mirip dengan konsep Nasi Padang.",
                  context,
                  nasiRames()),
              buildCardFood(
                  "Sego Gegog",
                  5,
                  "https://asset.kompas.com/crops/CnLvT5LsaPPueMMg9fEuT5tYn_c=/0x33:1000x699/750x500/data/photo/2020/11/24/5fbd1becdd765.jpg",
                  "Nasi gegok adalah nasi gegok terdiri nasi punel (nasi pulen dan menggumpal) yang ditambahkan sambal teri dan lauk serta dibungkus dengan daun pisang, kemudian dikukus sehingga memiliki aroma yang khas. ",
                  context,
                  segoGegok()),
              buildCardFoodOne(
                  "Papeda",
                  5,
                  "assets/image/papeda.jpg",
                  "Papeda adalah hidangan ini terbuat dari pati sagu, yang dihasilkan dari pohon sagu yang tumbuh subur di wilayah tersebut.",
                  context,
                  papeda()),
              buildCardFoodOne(
                  "Bakso",
                  3,
                  "assets/image/Bakso.jpeg",
                  "Bakso adalah hidangan Indonesia jenis bakmi atau mi yang terdiri dari bola daging yang diolah dari campuran daging sapi, tepung tapioka, dan bumbu-bumbu",
                  context,
                  bakso()),
              buildCardFoodOne(
                  "Rawon",
                  5,
                  "assets/image/rawon.jpeg",
                  "Rawon adalah hidangan ini memiliki ciri khas kuah hitam yang kaya rasa dan daging sapi yang lembut. ",
                  context,
                  rawon()),
              buildCardFoodOne(
                  "Soto",
                  3,
                  "assets/image/soto.jpg",
                  "Soto adalah hidangan yang sangat beragam, dengan banyak variasi regional yang masing-masing memiliki ciri khasnya sendiri.",
                  context,
                  soto()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0,
                duration: Duration(seconds: 1), curve: Curves.easeInOut);
          },
          child: Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
