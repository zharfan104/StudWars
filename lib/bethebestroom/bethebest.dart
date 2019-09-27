import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BeTheBest extends StatelessWidget {
  String _mapel = 'Fisika';
  String _subBab = 'Dinamika';
  String _soal = 'Berapa percepatan gravitasi bumi ?';
  int pMusuh = 222;
  int pPlayer = 123;
  String benar = '10 m/s^2';
  String salah1 = '7 m/s^2';
  String salah2 = '2 m/s^2';
  String salah3 = '5 m/s^2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_mapel - $_subBab',
              style: TextStyle(fontFamily: "MonsterratBold"),
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            child: Container(
              height: 320,
              child: ClipOval(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
          Container(
              child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Waktu Tersisa : ',
                            style: TextStyle(
                                fontFamily: "MonsterratBold",
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey),
                                child: Center(
                                    child: Text(
                                  "430 detik",
                                  style: TextStyle(
                                      fontFamily: "MonsterratBold",
                                      color: Colors.white),
                                ))),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Card(
                            color:
                                (pPlayer > pMusuh) ? Colors.green : Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                'Point kamu : $pPlayer',
                                style: TextStyle(
                                    fontFamily: "MonsterratBold",
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            color: (pMusuh > pPlayer)
                                ? Colors.yellow[800]
                                : Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                "Kamu Rank 3 dari 12",
                                style: TextStyle(
                                    fontFamily: "MonsterratBold",
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 125,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '$_soal',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "MonsterratBold",
                                fontSize: 24.0),
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                height: 40,
                                width: double.infinity,
                                child: Center(
                                    child: Text('$salah1',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: "MonsterratBold",
                                            fontSize: 20.0)))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                height: 40,
                                width: double.infinity,
                                child: Center(
                                    child: Text('$salah2',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: "MonsterratBold",
                                            fontSize: 20.0)))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                height: 40,
                                width: double.infinity,
                                child: Center(
                                    child: Text('$salah3',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: "MonsterratBold",
                                            fontSize: 20.0)))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                height: 40,
                                width: double.infinity,
                                child: Container(
                                  child: Center(
                                      child: Text('$benar',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontFamily: "MonsterratBold",
                                              fontSize: 20.0))),
                                )),
                          ),
                        ),
                      ),
                    ]),
                  )),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
