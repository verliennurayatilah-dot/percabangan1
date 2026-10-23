import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  State<Coba> createState() => Coba_State();
}

class Coba_State extends State<Coba> {
  List<String> menumakanan = ["Mie Ayam", "Soto", "Lalapan"];
  List<String> harga = ["10000", "15000", "20000"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe0d48e),
        appBar: AppBar(
          title: Text("Menu Makanan"),
          backgroundColor: Color(0xffb0a359),
        ),
        body: Center(
          child: Column(children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text("No"),
                  Text("Menu Makanan"),
                  Text("Harga")
                ]),
                for (int i = 0; i < menumakanan.length; i++)
                  TableRow(children: [
                    Text("${i + 1}"),
                    Text(menumakanan[i]),
                    Text(harga[i])
                  ]),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
