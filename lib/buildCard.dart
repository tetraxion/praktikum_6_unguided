import 'package:flutter/material.dart';

Card buildCardFood(
  String title,
  int rating,
  String img,
  String desc,
  BuildContext context,
  Widget nextPage,
) {
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
          colors: [
            Colors.blue,
            Color.fromARGB(255, 0, 255, 183)
          ], // Warna gradien
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
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(img),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                if (index < rating) {
                  return Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  );
                } else {
                  return Icon(
                    Icons.star_border,
                    size: 20,
                    color: Colors.yellow,
                  );
                }
              }),
            ),
            Text(
              desc,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),SizedBox(height: 8,),
            Divider(
              color: Colors.white, 
              thickness: 1.0, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 55, 148, 255)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => nextPage,
                      ),
                    );
                  },
                  child: Text("Detail Recipe"),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Card buildCardFoodOne(
  String title,
  int rating,
  String img,
  String desc,
  BuildContext context,
  Widget nextPage,
) {
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
          colors: [
            Colors.blue,
            Color.fromARGB(255, 0, 255, 183)
          ], // Warna gradien
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
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(img),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                if (index < rating) {
                  return Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  );
                } else {
                  return Icon(
                    Icons.star_border,
                    size: 20,
                    color: Colors.yellow,
                  );
                }
              }),
            ),
            Text(
              desc,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),SizedBox(height: 8,),
            Divider(
              color: Colors.white, 
              thickness: 1.0, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 55, 148, 255)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => nextPage,
                      ),
                    );
                  },
                  child: Text("Detail Recipe"),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
