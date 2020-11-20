part of 'ui.dart';

class LoginBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320,
              color: Colors.teal[100],
            ),
            clipper: CustomClipPath(),
          ),
          ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.teal[200],
            ),
            clipper: CustomClipPath1(),
          ),
          ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              color: Colors.teal[300],
            ),
            clipper: CustomClipPath2(),
          ),
        ],
      ),
    );
  }
}

class HomeBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              color: Colors.teal[100],
            ),
            height: 360,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              color: Colors.teal[200],
            ),
            height: 340,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              color: Colors.teal[300],
            ),
            height: 320,
          ),
        ],
      ),
    );
  }
}

