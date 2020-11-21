part of 'viewModel.dart';

Future getBarang() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://api-gudang.herokuapp.com/api/barang"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Success menampilkan data");
      final data = json.decode(hasil.body);
      // print("Get barang :" + data);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  } catch (e) {
    print("error Catch get Barang : $e");
  }
}
