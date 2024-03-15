import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.nama, required this.number});

  final String nama;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YUMMIE"),
      ),
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Column(
                children: <Widget>[
                  Text("Nama : $nama", style: TextStyle(fontSize: 15)),
                  Text("Telepon : $number", style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Makanan",
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.food_bank)
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Minuman",
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.coffee_rounded)
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Dessert",
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.bakery_dining_rounded)
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
