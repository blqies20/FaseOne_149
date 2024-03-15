import 'package:flutter/material.dart';


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
            Column(
              children: <Widget>[
                Text("Nama : $nama", style: TextStyle(fontSize: 15)),
                Text("Telepon : $number", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Makanan",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
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
