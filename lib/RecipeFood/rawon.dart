import "package:flutter/material.dart";

class rawon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 253, 255),
      appBar: AppBar(
        title: Text('Rawon'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          buildCardRawon(
              "Bahan",
              "Daging Sapi (Potong sesuai selera)\n"
                  "Kluwek (Keluak) yang dihaluskan\n"
                  "Bumbu-Bumbu:\n"
                  "6 butir bawang merah\n"
                  "4 siung bawang putih\n"
                  "Garam\n"
                  "Gula\n"
                  "Merica\n"
                  "Kaldu ayam (opsional)\n"
                  "Es Batu\n")
        ]),
      ),
    );
  }
}

Card buildCardRawon(String title, String desc) {
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
