import 'package:flutter/material.dart';
import 'package:fmarket/productionDetail.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({Key key, this.category}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> showingList;

  @override
  void initState() {
    super.initState();

    if (widget.category == "temel gida") {
      showingList = [
        productionCard(
          "Havuc",
          "10 TL",
          "https://cdn.pixabay.com/photo/2017/06/09/16/39/carrots-2387394__480.jpg",
        ),
        productionCard(
          "Peynir",
          "24 TL",
          "https://media.istockphoto.com/photos/cheese-slices-isolated-on-white-background-picture-id937388768?b=1&k=6&m=937388768&s=170667a&w=0&h=osZFeto4qy3WGPyRhoCqesbW_AvLGoW_e7RV0sIQWXg=",
          isThereProduction: true,
        ),
        productionCard(
          "Beyaz Peynir",
          "20 TL",
          "https://media.istockphoto.com/photos/raw-organic-white-feta-cheese-picture-id577945994?b=1&k=6&m=577945994&s=170667a&w=0&h=r4SOjknhLPt7JjoFnv7MYgdYyn4ldvEwQ0b8xZ-V1oo=",
          isThereProduction: true,
        ),
        productionCard(
          "Zeytin",
          "25 TL",
          "https://cdn.pixabay.com/photo/2016/08/15/22/30/olive-oil-1596639_1280.jpg",
          isThereProduction: true,
        ),
      ];
    } else if (widget.category == "sekerleme") {
      showingList = [
        productionCard(
          "Cikolata",
          "10 TL",
          "https://cdn.pixabay.com/photo/2013/09/18/18/24/chocolate-183543_1280.jpg",
        ),
        productionCard(
          "Jelibon",
          "12 TL",
          "https://cdn.pixabay.com/photo/2014/04/07/05/21/candies-318359_1280.jpg",
          isThereProduction: true,
        ),
        productionCard(
          "Seker",
          "12 TL",
          "https://cdn.pixabay.com/photo/2017/01/07/20/40/candy-1961536_1280.jpg",
          isThereProduction: true,
        ),
      ];
    } else if (widget.category == "icecekler") {
      showingList = [
        productionCard(
          "Su",
          "3 TL",
          "https://cdn.pixabay.com/photo/2014/12/24/05/02/drop-of-water-578897_1280.jpg",
        ),
        productionCard(
          "Meyve suyu",
          "12 TL",
          "https://cdn.pixabay.com/photo/2018/09/23/09/31/smoothie-3697014_1280.jpg",
          isThereProduction: true,
        ),
        productionCard(
          "Ayran",
          "10 TL",
          "https://cdn.pixabay.com/photo/2015/08/29/04/53/buttermilk-912760_1280.jpg",
          isThereProduction: true,
        ),
        productionCard(
          "Sut",
          "6 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg",
        )
      ];
    } else if (widget.category == "temizlik") {
      showingList = [
        productionCard(
          "Sabun",
          "20 TL",
          "https://cdn.pixabay.com/photo/2020/02/08/10/35/soap-4829708_1280.jpg",
        ),
        productionCard(
          "Camsil",
          "24 TL",
          "https://cdn.pixabay.com/photo/2021/01/13/11/04/hand-5913851_1280.jpg",
          isThereProduction: true,
        ),
        productionCard(
          "Sivi sabun",
          "12 TL",
          "https://cdn.pixabay.com/photo/2017/05/23/16/23/soap-dispenser-2337697_1280.jpg",
          isThereProduction: true,
        ),
      ];
    }
  }

  Widget productionCard(String name, String price, String imagePath,
      {bool isThereProduction = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductionDetail(
              name: name,
              price: price,
              imagePath: imagePath,
              isThereProduction: isThereProduction,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: imagePath,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 1.0,
        children: showingList,
      ),
    );
  }
}
