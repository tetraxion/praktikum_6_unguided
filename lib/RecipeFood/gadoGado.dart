import "package:flutter/material.dart";

class gadoGado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 253, 255),
      appBar: AppBar(
        title: Text('Gado-gado'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          buildCardGadogado(
              "Bahan",
              "1 piring kentang, rebus dan potong dadu\n"
                  "1 piring tauge (kecambah)\n"
                  "1 piring bayam\n"
                  "1 piring kangkung\n"
                  "1 piring wortel, potong tipis\n"
                  "1 piring kubis, iris halus\n"
                  "1 buah tomat, potong-potong\n"
                  "150 gram tahu, goreng dan potong kotak\n"
                  "150 gram tempe, goreng dan potong kotak\n"
                  "2 butir telur, rebus\n"
                  "Lontong atau ketupat (sebagai pelengkap)\n"
                  "Bawang goreng (untuk hiasan)\n")
        ]),
      ),
    );
  }
}

Card buildCardGadogado(String title, String desc) {
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
