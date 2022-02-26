import 'package:drug_traffiking/Login/login_page.dart';
import 'package:drug_traffiking/homepage/homepage.dart';
import 'package:drug_traffiking/Login/personal_details.dart';
import 'package:drug_traffiking/model/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  late double deviceHeight;
  late double deviceWidth;
  String OTP = "";
  FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 320,
                decoration: BoxDecoration(color: Color(0xFF21BFBD)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 75.0),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/otp_verification.png',
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40.0),
                      child: Row(
                        children: const <Widget>[
                          Text('OTP Verification',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                      child: Column(
                        children: [
                          // Align(
                          //   alignment: Alignment.topLeft,
                          //   child: GestureDetector(
                          //     onTap: () => Navigator.pop(context),
                          //     child: Icon(
                          //       Icons.arrow_back,
                          //       size: 32,
                          //       color: Colors.black54,
                          //     ),
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(top: 75.0),
                            child: Text(
                              "Please enter the OTP sent to your mobile number",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  cursorColor: Color(0xFF21BFBD),
                                  focusNode: myFocusNode,
                                  autocorrect: true,
                                  autofocus: false,
                                  controller: TextEditingController()
                                    ..text = OTP
                                    ..selection = TextSelection.collapsed(
                                        offset: OTP.length),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]+")),
                                    LengthLimitingTextInputFormatter(6)
                                  ],
                                  onChanged: (text) {
                                    OTP = text;
                                  },
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter the OTP",
                                    hintStyle: TextStyle(fontSize: 16),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF21BFBD)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF21BFBD)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    suffixIcon: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF21BFBD),
                                      size: 32,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (OTP == "") {
                                        Snackbar().showFlushbar(
                                            context: context,
                                            message: "Enter the OTP");
                                      } else if (OTP.length != 6) {
                                        Snackbar().showFlushbar(
                                            context: context,
                                            message: "Enter the 6 digit OTP");
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            //  builder: (context) => UserDetails(
                                            // verificationId: verificationId,
                                            // resendToken: resendToken,
                                            // phoneNumber: phoneNumber,
                                            builder: (context) =>
                                                PersonalDetails(),
                                          ),
                                        );
                                      }
                                    },
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFF21BFBD)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Text(
                                        'V E R I F Y',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "Resend  OTP ?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38,
                                        ),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 70);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
