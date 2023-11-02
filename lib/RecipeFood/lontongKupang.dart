import "package:flutter/material.dart";

class lontongKupang extends StatelessWidget {
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
          buildCardKupang(
              "Bahan",
              "Kerang-kerangan (kerang dara atau kerang hijau, sesuai selera)\n"
                  "Udang, dikupas kulitnya (sesuai selera)\n"
                  "Bawang putih (secukupnya, untuk kuah)\n"
                  "Bawang merah (secukupnya, untuk kuah)\n"
                  "Cabai merah (secukupnya, untuk kuah)\n"
                  "Jahe (secukupnya, untuk kuah)\n"
                  "Lontong (nasi ketan yang sudah dikukus dan dipotong kotak)\n"
                  "Tauge (kecambah) (sebagai hiasan)\n"
                  "Daun seledri (untuk hiasan)\n"
                  "Air (untuk kuah, sesuai kebutuhan)\n"
                  "Garam (secukupnya, sesuai selera)\n"
                  "Merica (secukupnya, sesuai selera)\n")
        ]),
      ),
    );
  }
}

Card buildCardKupang(String title, String desc) {
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
