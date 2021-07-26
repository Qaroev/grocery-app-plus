import 'package:flutter/material.dart';

class PasswordComponent extends StatefulWidget {
  @override
  _PasswordComponentState createState() => _PasswordComponentState();
}

class _PasswordComponentState extends State<PasswordComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe1ddd0),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
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
                Center(
                  child: Image(
                      image: AssetImage('assets/forgotPassword.png'),
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    'Enter the password',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: Text(
                    'It looks like you already have an account in this number. Please enter the password to proceed',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlineButton(
                  onPressed: () => {},
                  child: Text(
                    "Forgot  Password?",
                    style: TextStyle(color: Color(0xFFF37A20)),
                  ),
                  borderSide: BorderSide.none,
                ),
                Container(
                  color: Color(0xFF5EC401),
                  child: OutlineButton(
                    onPressed: () => null,
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
                              'Submit',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Color(0xFF5EC401),
                    borderSide: new BorderSide(
                      color: Color(0xFF5EC401),
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
