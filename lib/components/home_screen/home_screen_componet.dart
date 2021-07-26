import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Mask Group.png"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grocery Plus",
                    style: TextStyle(fontSize: 24, color: Color(0xFF37474F),fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications_outlined),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text('Your Location'),
              subtitle: Text('32 Llanberis Close, Tonteg, CF38 1HR'),
              leading: CircleAvatar(
                  backgroundColor: Color(0xFF87DD39),
                  child: Icon(
                    Icons.add_location,
                    color: Color(0xFFFFFFFF),
                  )),
              trailing: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: TextButton(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () => {}),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Search Anything',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Container(
                height: 100,
                width: 1000,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Wrap(
                    runSpacing: 5.0,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Column(
                            children: <Widget>[
                              Image(image: AssetImage('assets/fruits.png'), fit: BoxFit.cover),
                              Text("Fruits & Vegetables")
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Column(
                            children: <Widget>[
                              Image(image: AssetImage('assets/breakfast.png'), fit: BoxFit.cover),
                              Text("Fruits & Vegetables")
                            ],
                          ),
                        ),
                      ),
                      CustomCard(),
                      CustomCard(),
                      CustomCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF5EC401),
            icon: Container(
              decoration:
                  BoxDecoration(color: Color(0xFF5EC401), shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  'assets/home.png',
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/menu.png',
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/listProduct.png',
              color: Colors.black,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/account.png',
              color: Colors.black,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/fruits.png'), fit: BoxFit.cover),
            Text("Fruits & Vegetables")
          ],
        ),
      ),
    );
  }
}
