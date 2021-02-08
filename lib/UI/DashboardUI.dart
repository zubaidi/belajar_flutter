import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardUI extends StatefulWidget {
  DashboardWidget createState() => DashboardWidget();
}

class DashboardWidget extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Judul Aplikasi"),
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 185.0,
                margin: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.red[800]),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Informasi Favorit',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Lihat lainnya >>',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              margin: EdgeInsets.only(bottom: 3.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.blue[600]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              margin: EdgeInsets.only(bottom: 3.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.amber[700]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.deepPurple[800],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        iconSize: 18.0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance),
              title: new Text('Informasi')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.report), title: new Text('Laporan')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text('Akun')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.logout), title: new Text('Keluar'))
        ],
      ),
    );
  }
}
