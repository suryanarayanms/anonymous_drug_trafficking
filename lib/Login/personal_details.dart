import 'package:drug_traffiking/homepage/homepage.dart';
import 'package:drug_traffiking/model/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  Personal_DetailsState createState() => Personal_DetailsState();
}

class Personal_DetailsState extends State<PersonalDetails> {
  late double deviceHeight;
  late double deviceWidth;
  String personal_details = "";
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
                              'assets/images/user.png',
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
                          Text('Personal Details',
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
                              "Just to know your name",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              top: 50,
                            ),
                            child: TextFormField(
                              cursorColor: Color(0xFF21BFBD),
                              focusNode: myFocusNode,
                              autocorrect: true,
                              autofocus: false,
                              controller: TextEditingController()
                                ..text = personal_details
                                ..selection = TextSelection.collapsed(
                                    offset: personal_details.length),
                              keyboardType: TextInputType.text,
                              inputFormatters: [
                                // FilteringTextInputFormatter.allow(RegExp("[0-9]+")),
                                LengthLimitingTextInputFormatter(100)
                              ],
                              onChanged: (text) {
                                personal_details = text;
                              },
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                hintText: "Your name remains annonymous",
                                hintStyle: TextStyle(fontSize: 16),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF21BFBD)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF21BFBD)),
                                    borderRadius: BorderRadius.circular(10)),
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
                                if (personal_details == "") {
                                  Snackbar().showFlushbar(
                                      context: context,
                                      message: "Enter your name");
                                } else if (personal_details.length < 3) {
                                  Snackbar().showFlushbar(
                                      context: context,
                                      message: "Enter a valid name");
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      //  builder: (context) => UserDetails(
                                      // verificationId: verificationId,
                                      // resendToken: resendToken,
                                      // phoneNumber: phoneNumber,
                                      builder: (context) => HomePage(),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Text(
                                  'S  U  B  M  I  T',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          )
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
