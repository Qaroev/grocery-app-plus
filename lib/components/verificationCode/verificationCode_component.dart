import 'package:flutter/material.dart';

class VerificationCodeComponent extends StatefulWidget {
  @override
  _VerificationCodeComponentState createState() =>
      _VerificationCodeComponentState();
}

class _VerificationCodeComponentState extends State<VerificationCodeComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                  height: 80,
                ),
                Center(
                  child: Image(
                      image:
                          AssetImage('assets/undraw_personalization_triu.png'),
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    'Enter Verification Code',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: Text(
                    'We have sent SMS to:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Text(
                    '01XXXXXXXXXX',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OTPDigitTextFieldBox(first: true, last: false),
                            OTPDigitTextFieldBox(first: false, last: false),
                            OTPDigitTextFieldBox(first: false, last: false),
                            OTPDigitTextFieldBox(first: false, last: false),
                            OTPDigitTextFieldBox(first: false, last: true),
                          ],
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlineButton(
                      onPressed: () => {},
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(color: Color(0xFFF37A20)),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    OutlineButton(
                      onPressed: () => {},
                      child: Text(
                        "Change phone Number",
                        style: TextStyle(color: Color(0xFF37474F)),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
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

class OTPDigitTextFieldBox extends StatelessWidget {
  final bool first;
  final bool last;

  const OTPDigitTextFieldBox({required this.first, required this.last})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 50,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.all(0),
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
