import "package:flutter/material.dart";

class nasiGudeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 253, 255),
      appBar: AppBar(
        title: Text('Nasi Gudeg'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          buildCardGudeg(
              "Bahan",
              "Nangka Muda (Young Jackfruit), potong-potong\n"
                  "Telur Rebus, iris menjadi dua\n"
                  "Santan (susu kelapa)\n"
                  "Gula Jawa (Gula Merah), dihancurkan atau dicincang\n"
                  "Bawang Putih, dihaluskan\n"
                  "Bawang Merah, dihaluskan\n"
                  "Daun Salam\n"
                  "Serai, dimemarkan\n"
                  "Garam, secukupnya\n"
                  "Merica, secukupnya\n"
                  "Daun Pisang, untuk membungkus\n"
                  "Ketupat atau Lontong (sebagai pelengkap)\n"
                  "Krecek (opsional, untuk rasa gurih dan tekstur renyah)\n"
                  "Ayam Goreng (opsional, untuk disajikan bersama)\n"
                  "Sambal (opsional, jika suka pedas)\n")
        ]),
      ),
    );
  }
}

Card buildCardGudeg(String title, String desc) {
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
