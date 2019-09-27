import 'package:flutter/material.dart';
import 'package:flutter_firebase_login/studwars/list_item_type/type_title.dart';

class ListItemLeaderboard extends StatelessWidget {
  final String nama;
  final String image;
  final int menang;
  final int kalah;
  final int rank;

  const ListItemLeaderboard(
      {Key key, this.nama, this.image, this.menang, this.kalah, this.rank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            height: 72.0,
            width: 72.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Image.network(image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(child: MenuTitle(title: nama.substring(0, 10))),
                Text('menang : $menang'),
                SizedBox(
                  height: 2,
                ),
                Text('kalah : $kalah')
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Text(
                '$rank',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      borderOnForeground: true,
    );
  }
}
