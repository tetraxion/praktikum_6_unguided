import "package:flutter/material.dart";

class soto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 253, 255),
      appBar: AppBar(
        title: Text('Soto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          buildCardSoto(
              "Bahan",
              "Daging Ayam (dada atau paha), potong sesuai selera\n"
                  "Bawang Merah, iris tipis\n"
                  "Bawang Putih, cincang halus\n"
                  "Jahe, iris tipis\n"
                  "Serai (sereh), memarkan\n"
                  "Daun Jeruk Purut (opsional)\n"
                  "Kunyit, bakar dan haluskan\n"
                  "Ketumbar, sangrai dan haluskan\n"
                  "Kaldu Ayam (opsional)\n"
                  "Garam\n"
                  "Merica\n"
                  "Minyak Goreng\n"
                  "Air\n"
                  "Lontong atau Nasi Putih (sebagai pelengkap)\n"
                  "Tauge (kecambah)\n"
                  "Daun Bawang, iris halus (untuk hiasan)\n"
                  "Bawang Goreng (untuk hiasan)\n")
        ]),
      ),
    );
  }
}

Card buildCardSoto(String title, String desc) {
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
