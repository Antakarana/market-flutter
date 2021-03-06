import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text("Cikolatali gofret"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("7.00 TL"),
        ),
        ListTile(
          title: Text("Meyve suyu"),
          subtitle: Text("1 adet x 2.00 TL"),
          trailing: Text("2.00 TL"),
        ),
        ListTile(
          title: Text("Islak kek"),
          subtitle: Text("2 adet x 5.50 TL"),
          trailing: Text("11 TL"),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Align(
                child: Column(
                  children: [
                    Text(
                      "Toplam Tutar",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[400],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "20.00 TL",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400],
            ),
            child: Center(
              child: Text(
                "Alisverisi Tamamla",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
