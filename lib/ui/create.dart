part of 'ui.dart';

void main() {
  runApp(new MaterialApp(
    home: new Create(),
  ));
}

class Create extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        LoginBackground(),
        Padding(
          padding: EdgeInsets.all(50),
          child: Center(
            child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.teal[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new TextField(
                        decoration: new InputDecoration(
                            hintText: "Nama Barang",
                            labelText: "Nama Barang",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.teal[50], fontSize: 20),
                            hoverColor: Colors.white),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      new TextField(
                        decoration: new InputDecoration(
                            hintText: "Jumlah Barang",
                            labelText: "Jumlah Barang",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20.0))),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(height: 30),
                            RaisedButton(
                              color: Colors.green[400],
                              onPressed: () {},
                              child: const Text('OK',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    ));
  }
}
