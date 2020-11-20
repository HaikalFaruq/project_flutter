part of 'ui.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Stack(
        children: [
          LoginBackground(),
          ListView(children: [
            Column(children: [
              SizedBox(height: 310),
              Container(
                height: 60,
                padding: EdgeInsets.only(right: 50, left: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(fontSize: 20),
                  // textInputAction: TextInputAction.continueAction,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                padding: EdgeInsets.only(right: 50, left: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(fontSize: 20),
                  textInputAction: TextInputAction.send,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Gudang()));
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal[400]),
                  child: Center(
                    child: Text("Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "- - - Third Party Register - - -",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
              SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.teal),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img/google.png",
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.teal),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img/github.png",
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.teal),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img/twitter.png",
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.teal),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img/facebook.png",
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.teal),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img/linkedin.png",
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ])
            ])
          ])
        ],
      ),
    );
  }
}
