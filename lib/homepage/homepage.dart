import 'package:drug_traffiking/homepage/Report%20Page/Report_page.dart';

import 'package:drug_traffiking/homepage/upload_page.dart';

import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double deviceHeight;
  late double deviceWidth;
  final number = '100';

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text('Drug',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text('Trafficking',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: Colors.red, // background
                              ),
                              onPressed: () {
                                // launch('tel:$number');
                                FlutterPhoneDirectCaller.callNumber('$number');
                                // FlutterPhoneDialCaller.
                                // launch('tel:+916380861730');

                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => SoS()))
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 150,
                                width: MediaQuery.of(context).size.width,

                                // decoration: BoxDecoration(
                                //   color: Colors.red,
                                //   borderRadius: BorderRadius.only(
                                //       topLeft: Radius.circular(10),
                                //       topRight: Radius.circular(10),
                                //       bottomLeft: Radius.circular(10),
                                //       bottomRight: Radius.circular(10)),
                                //   boxShadow: [
                                //     BoxShadow(
                                //       color: Colors.grey.withOpacity(0.3),
                                //       spreadRadius: 7,
                                //       blurRadius: 9,
                                //       offset: Offset(
                                //           0, 3), // changes position of shadow
                                //     ),
                                //   ],
                                // ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/sos.png',
                                      height: 50,
                                    ),
                                    SizedBox(height: 12),
                                    Text("Make a call",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 45,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: Colors.orange, // background
                              ),
                              onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => UploadDetails()))
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                // decoration: BoxDecoration(
                                //   color: Colors.red,
                                //   borderRadius: BorderRadius.only(
                                //       topLeft: Radius.circular(10),
                                //       topRight: Radius.circular(10),
                                //       bottomLeft: Radius.circular(10),
                                //       bottomRight: Radius.circular(10)),
                                //   boxShadow: [
                                //     BoxShadow(
                                //       color: Colors.grey.withOpacity(0.3),
                                //       spreadRadius: 7,
                                //       blurRadius: 9,
                                //       offset: Offset(
                                //           0, 3), // changes position of shadow
                                //     ),
                                //   ],
                                // ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/upload.png',
                                      height: 50,
                                    ),
                                    SizedBox(height: 12),
                                    Text("Report a complaint",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: Colors.blue, // background
                              ),
                              onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Report()))
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                // decoration: BoxDecoration(
                                //   color: Colors.red,
                                //   borderRadius: BorderRadius.only(
                                //       topLeft: Radius.circular(10),
                                //       topRight: Radius.circular(10),
                                //       bottomLeft: Radius.circular(10),
                                //       bottomRight: Radius.circular(10)),
                                //   boxShadow: [
                                //     BoxShadow(
                                //       color: Colors.grey.withOpacity(0.3),
                                //       spreadRadius: 7,
                                //       blurRadius: 9,
                                //       offset: Offset(
                                //           0, 3), // changes position of shadow
                                //     ),
                                //   ],
                                // ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/clipboard.png',
                                      height: 50,
                                    ),
                                    SizedBox(height: 12),
                                    Text("My complaints",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 38.0),
                    child: Text(
                        "Prevent drug trafficking anonymously and safely",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
