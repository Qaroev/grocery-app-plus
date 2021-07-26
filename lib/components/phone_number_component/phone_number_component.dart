import 'package:flutter/material.dart';

class PhoneNumberComponent extends StatefulWidget {
  @override
  _PhoneNumberComponentState createState() => _PhoneNumberComponentState();
}

class _PhoneNumberComponentState extends State<PhoneNumberComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 100,
                ),
                Center(
                  child: Image(
                      image: AssetImage('assets/undraw_personalization_triu.png'),
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    'Enter your mobile number',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: Text(
                      'We need to verify you. We will send you a one time verification code. '),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
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
                              'Next',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: Color(0xFF5EC401),
                    borderSide: new BorderSide(color: Color(0xFF5EC401),),
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
