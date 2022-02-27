import 'package:drug_traffiking/homepage/Report%20Page/crime_reports.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 20),
            child: Text('Your',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text('Reports',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0)),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Date:\nStatus:\nDescription:\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0)),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrimeReport()));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
