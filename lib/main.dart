import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Juice Mobile App",
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: splash(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  String image= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5w4XuCcKFc5sjtYi-CObrH3EpYdLF_WbsHQ&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey, items: [ BottomNavigationBarItem(icon: Icon(Icons.looks_one), title: Text("Blue")),
        BottomNavigationBarItem(icon: Icon(Icons.looks_two), title: Text("Orange")),
        BottomNavigationBarItem(icon: Icon(Icons.looks_3), title: Text("Red")),],),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dashboard_rounded,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green, Colors.blue]),


                ),
                currentAccountPictureSize: Size.square(72.0),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgldRISddjKsTQa1Yqrw90usiAIa1AjYC7OA&usqp=CAU"),
                ),
                accountEmail: Text(
                    'anmolmishra@gmail.com'), // keep blank text because email is required
                accountName: Text("Anmol")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
              child: Text(
                "Fresh Juices",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
              child: Text(
                "We serve over 200 varieties of fresh juices",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ),

            // TextFormField(decoration: ,)
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey.shade200),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: TextStyle(fontSize: 22),
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Search...",
                          hintStyle: TextStyle(fontSize: 22),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    color: _hasBeenPressed1 ? Color(0XFF26C6DA) : Colors.white,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed1 = !_hasBeenPressed1;
                      });
                    },
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: 18,
                        color: _hasBeenPressed1 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    color: _hasBeenPressed2 ? Color(0XFF26C6DA) : Colors.white,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed2 = !_hasBeenPressed2;
                      });
                    },
                    child: Text(
                      "Fruits",
                      style: TextStyle(
                        fontSize: 18,
                        color: _hasBeenPressed2 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    color: _hasBeenPressed3 ? Color(0XFF26C6DA) : Colors.white,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed3 = !_hasBeenPressed3;
                      });
                    },
                    child: Text(
                      "Juices",
                      style: TextStyle(
                        fontSize: 18,
                        color: _hasBeenPressed3 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    color: _hasBeenPressed4 ? Color(0XFF26C6DA) : Colors.white,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed4 = !_hasBeenPressed4;
                      });
                    },
                    child: Text(
                      "Ice Cream",
                      style: TextStyle(
                        fontSize: 18,
                        color: _hasBeenPressed4 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 300,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 250,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 250,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 250,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 250,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 300,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 300,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200),
                      width: 200,
                      height: 250,
                      //margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
