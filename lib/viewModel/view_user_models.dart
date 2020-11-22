part of 'viewModel.dart';

Future getBarang() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://api-gudang.herokuapp.com/api/barang"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Success menampilkan data");
      final data = json.decode(hasil.body);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  } catch (e) {
    print("error Catch get Barang : $e");
  }
}

Future createBarang(String idbarang, String barang, String qty) async {
  try{
    var url = 'https://api-gudang.herokuapp.com/api/barang';
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    Map<String, dynamic> requestPayload = {
      "id_barang": idbarang,
      "name_barang": barang,
      "stock_barang": qty,
    };
    var hasil = await http.post(url, body: jsonEncode(requestPayload), headers: {'Content-Type': 'application/json'});

    if(hasil.statusCode == 201){
      print("Create Berhasil !");
      return true;
    } else {
      print("Gagal Create :(");
      print(hasil.statusCode);
      return false;
    }
  } catch(e){
    print("Error catch when Create Barang: $e");
  }
}
