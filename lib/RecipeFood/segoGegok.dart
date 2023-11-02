import "package:flutter/material.dart";

class segoGegok extends StatelessWidget {
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
          buildCardGegok(
              "Bahan",
              "200 gram beras\n"
                  "300 ml air\n"
                  "Daun pisang untuk membungkus\n"
                  "Tusuk gigi\n"
                  "100 gram jengki (Teri), diseduh, ditiriskan\n"
                  "2 lembar daun salam\n"
                  "2 cm lengkuas, dimemarkan\n"
                  "1/4 sendok teh garam\n"
                  "1/4 sendok teh gula pasir\n"
                  "100 ml air\n"
                  "2 sendok makan minyak untuk menumis\n"
                  "6 butir bawang merah\n"
                  "4 siung bawang putih\n"
                  "3 buah cabai merah keriting\n"
                  "7 buah cabai rawit merah\n")
        ]),
      ),
    );
  }
}

Card buildCardGegok(String title, String desc) {
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
