import 'package:flutter/material.dart';
import 'package:fmarket/basket.dart';
import 'package:fmarket/production.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  //final text = "Widgettan gelen text";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _contents;
  int _activeContentNo = 0;

  @override
  void initState() {
    super.initState();
    _contents = [
      //Text(widget.text),
      Production(),
      Basket()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Ucarak Gelsin",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _contents[_activeContentNo],
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ada Sal"),
            accountEmail: Text("ada@gmail.com"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0)),
            ),
            decoration: BoxDecoration(color: Colors.red[400]),
          ),
          ListTile(
            title: Text("Siparislerim"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Indirimlerim"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Ayarlar"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Cikis Yap"),
            onTap: () => Navigator.pop(context),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeContentNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Urunler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetim",
          )
        ],
        onTap: (int clickedButtonPosNo) => setState(() {
          _activeContentNo = clickedButtonPosNo;
        }),
      ),
    );
  }
}
