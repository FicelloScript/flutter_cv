import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Ton Nom et Prénom',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('URL_de_ton_image'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Ajouter l'action pour Facebook
                  },
                ),
                IconButton(
                  icon: Icon(Icons.info_outline),
                  onPressed: () {
                    // Ajouter l'action pour LinkedIn
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                },
                children: [
                  TableRow(children: [
                    TableCell(child: Text('Mail')),
                    TableCell(child: Text('exemple@mail.com')),
                  ]),
                  TableRow(children: [
                    TableCell(child: Text('Téléphone')),
                    TableCell(child: Text('+33 6 12 34 56 78')),
                  ]),
                  TableRow(children: [
                    TableCell(child: Text('Adresse mail')),
                    TableCell(child: Text('autreexemple@mail.com')),
                  ]),
                  TableRow(children: [
                    TableCell(child: Text('Site')),
                    TableCell(child: Text('www.monSiteWeb.com')),
                  ]),
                  TableRow(children: [
                    TableCell(child: Text('Description')),
                    TableCell(child: Text('Une brève description ici.')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
