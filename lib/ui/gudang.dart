part of 'ui.dart';

class Gudang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Stack(
          children: [
            HomeBackground(),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 50, color: Colors.teal[50]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Admin",
                    style: TextStyle(fontSize: 25, color: Colors.teal[50]),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 125,
                  ),
                  Image.asset(
                    'assets/img/vector.png',
                    height: 200,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 210,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Create()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Masukkan Barang",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                              ////// Semua Barang
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Show()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Semua Barang",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //// Keluar barang
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Delete()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Keluarkan Barang",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Export Data Barang",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
