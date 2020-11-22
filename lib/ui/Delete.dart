part of 'ui.dart';

class Delete extends StatefulWidget {
  @override
  _DeleteState createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  List dataBarangOk;

  void showBarang() {
    getBarang().then((value) {
      setState(() {
        dataBarangOk = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // dataDelete();
    showBarang();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(children: [
            dataBarangOk == null
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                        itemCount: dataBarangOk.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 5), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white),
                              child: Row(children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  width: 90,
                                  margin: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    color: Colors.transparent,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset('assets/img/x1.jpg'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    // color: Colors.blue,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    margin: EdgeInsets.only(
                                        top: 15, bottom: 15, right: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  dataBarangOk[i]['id_barang'],
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.delete,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Expanded(
                                            child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Text(
                                            dataBarangOk[i]['name_barang'],
                                            style: TextStyle(
                                              fontSize: 27,
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.bottomLeft,
                                          height: 30,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Text(
                                            "Jumlah Stock: " +
                                                dataBarangOk[i]['stock_barang']
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          );
                        }),
                  ),
          ]),
        ));
  }
}
