part of 'ui.dart';

class Laporan extends StatefulWidget {
  @override
  _LaporanState createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {

  _launchXLSX() async {
    const url = 'https://api-gudang.herokuapp.com/api/laporan/excel';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Stack(
          children: <Widget>[
            LoginBackground(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Barang Masuk", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal,
                          ),
                          child: Center(
                            child: Text("Export to PDF", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      GestureDetector(
                        onTap: _launchXLSX,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal,
                          ),
                          child: Center(
                            child: Text("Export to Excel", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Barang Keluar", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal,
                          ),
                          child: Center(
                            child: Text("Export to PDF", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      GestureDetector(
                        onTap: _launchXLSX,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal,
                          ),
                          child: Center(
                            child: Text("Export to Excel", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
