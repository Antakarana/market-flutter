import 'package:flutter/material.dart';

class ProductionDetail extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final bool isThereProduction;

  const ProductionDetail(
      {Key key, this.name, this.price, this.imagePath, this.isThereProduction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(tag: imagePath, child: Image.network(imagePath)),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.red[400],
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 18.0),
            Text(
              name,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            SizedBox(height: 18.0),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Text(
            "Bu bolumde urun aciklamasi bulunacak. Urunun ne kadar kaliteli oldugu hakkinda bilgi verilecek.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: isThereProduction ? Colors.red[400] : Colors.black,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Center(
              child: Text(
                isThereProduction ? "Sepete Ekle" : "Stokta Yok",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
