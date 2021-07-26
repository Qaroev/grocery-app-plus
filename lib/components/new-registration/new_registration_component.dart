import 'package:flutter/material.dart';

class NewRegistrationComponent extends StatefulWidget {
  @override
  _NewRegistrationComponentState createState() =>
      _NewRegistrationComponentState();
}

class _NewRegistrationComponentState extends State<NewRegistrationComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe1ddd0),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Your Information",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Mask Group.png"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    'It looks like you don’t have account in this number. Please let us know some information for a scure service',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image(
                      image: AssetImage('assets/camera.png'),
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Color(0xFF236CD9),
                  child: OutlineButton(
                    onPressed: () => null,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Sync From Facebook',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Color(0xFF236CD9),
                    borderSide: new BorderSide(
                      color: Color(0xFF236CD9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: Icon(Icons.person_pin),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                ),
                Container(
                  color: Color(0xFF5EC401),
                  child: FlatButton(
                    onPressed: () => {},
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
