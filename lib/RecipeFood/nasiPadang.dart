import "package:flutter/material.dart";

class nasiPadang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 253, 255),
      appBar: AppBar(
        title: Text('Lontong Kupang'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          buildCardPadang(
              "Bahan",
              "Daging Sapi (untuk Rendang, Gulai, dan lainnya)\n"
                  "Ayam (untuk Ayam Pop, Ayam Goreng, dan lainnya)\n"
                  "Ikan (untuk Ikan Bakar, Gulai Ikan, dan lainnya)\n"
                  "Santan (susu kelapa)\n"
                  "Bumbu-Bumbu (bawang merah, bawang putih, jahe, kunyit, ketumbar, dan daun jeruk)\n"
                  "Cabai (untuk cita rasa pedas)\n"
                  "Kencur (untuk aroma dan rasa khas)\n"
                  "Daun Salam dan Serai (sereh) (untuk aroma)\n"
                  "Telur (rebus atau digoreng, untuk Telur Balado)\n"
                  "Sayuran hijau (daun singkong, daun melinjo, terong, dan lainnya)\n"
                  "Gula Jawa (Gula Merah, untuk cita rasa manis)\n"
                  "Minyak Kelapa (untuk memasak)\n")
        ]),
      ),
    );
  }
}

Card buildCardPadang(String title, String desc) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Color.fromARGB(255, 0, 255, 183)],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            SizedBox(height: 12),
            Text(
              desc,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
          ],
        ),
      ),
    ),
  );
}
