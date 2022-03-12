// import 'package:drug_traffiking/Login/otp_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'model/flushbar.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _RegisterState createState() => _RegisterState();
// }

// class _RegisterState extends State<LoginPage> {
//   late double deviceHeight;
//   late double deviceWidth;
//   late bool isDarkMode;
//   bool isLoading = false;
//   String phoneNumber = "";
//   FocusNode myFocusNode = FocusNode();

//   @override
//   Widget build(BuildContext context) {
//     // isDarkMode = globalNotifier.value == ThemeMode.dark;
//     deviceHeight = MediaQuery.of(context).size.height;
//     deviceWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Stack(
//                   children: [
//                     SizedBox(
//                       // color: Colors.black,
//                       height: deviceHeight / 2,
//                       width: deviceWidth,
//                       child: Image.asset('assets/images/Background_design.png',
//                           fit: BoxFit.cover),
//                       // alignment: Alignment.topCenter,
//                     ),
//                     SizedBox(
//                       height: deviceHeight / 2,
//                       width: deviceWidth,
//                       child: Padding(
//                         padding: EdgeInsets.only(top: deviceHeight / 15),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 SizedBox(
//                                   width: deviceWidth / 5,
//                                   child: Text(
//                                     'SaKo',
//                                     textAlign: TextAlign.end,
//                                     style: TextStyle(
//                                       fontSize: deviceWidth / 16,
//                                       fontWeight: FontWeight.w900,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: deviceHeight / 3.5,
//                                   width: deviceWidth / 2,
//                                   child: AspectRatio(
//                                     aspectRatio: 1 / 1,
//                                     child: Image.asset(
//                                       'assets/images/illustration-2.png',
//                                       fit: BoxFit.contain,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: deviceWidth / 5,
//                                   child: Text(
//                                     'சகோ',
//                                     textAlign: TextAlign.start,
//                                     style: TextStyle(
//                                       fontSize: deviceWidth / 18,
//                                       fontWeight: FontWeight.w900,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 // ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 SizedBox(
//                                   width: deviceHeight / 13,
//                                   child: Image.asset(
//                                     'assets/images/policelogo.png',
//                                   ),
//                                 ),
//                                 const Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Text(
//                                     "Coimbatore District Police",
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.white,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: deviceHeight / 2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20, right: 20),
//                             child: TextFormField(
//                               focusNode: myFocusNode,
//                               autocorrect: false,
//                               autofocus: false,
//                               controller: TextEditingController()
//                                 ..text = phoneNumber
//                                 ..selection = TextSelection.collapsed(
//                                     offset: phoneNumber.length),
//                               keyboardType: TextInputType.number,
//                               inputFormatters: [
//                                 FilteringTextInputFormatter.allow(
//                                     RegExp("[0-9]+")),
//                                 LengthLimitingTextInputFormatter(10)
//                               ],
//                               onTap: () {
//                                 _requestFocus();
//                               },
//                               onChanged: (text) {
//                                 phoneNumber = text;
//                               },
//                               decoration: InputDecoration(
//                                 border: const OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(10.0),
//                                   ),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   borderSide:
//                                       BorderSide(color: Colors.red[700]!),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   borderSide:
//                                       BorderSide(color: Colors.red[700]!),
//                                 ),
//                                 filled: true,
//                                 hintStyle: TextStyle(
//                                   color: Colors.grey[350],
//                                 ),
//                                 labelText: "Phone Number",
//                                 hintText: "",
//                                 prefixIcon: Icon(
//                                   Icons.phone,
//                                   color: myFocusNode.hasFocus
//                                       ? Colors.red[700]
//                                       : isDarkMode
//                                           ? Colors.white
//                                           : Colors.black,
//                                 ),
//                                 labelStyle: TextStyle(
//                                   color: myFocusNode.hasFocus
//                                       ? Colors.red[700]
//                                       : isDarkMode
//                                           ? Colors.white
//                                           : Colors.black,
//                                 ),
//                                 fillColor: Colors.transparent,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: deviceHeight / 20),
//                             child: SizedBox(
//                               width: deviceWidth / 3.7,
//                               height: deviceWidth / 11,
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   if (phoneNumber == "") {
//                                     Snackbar().showFlushbar(
//                                         context: context,
//                                         message: "Enter a phone number");
//                                   } else if (phoneNumber.length != 10) {
//                                     Snackbar().showFlushbar(
//                                         context: context,
//                                         message: "Enter a 10-digit number");
//                                   } else {
//                                     setState(() {
//                                       isLoading = true;
//                                     });
//                                     await phoneAuth(int.parse(phoneNumber));
//                                   }
//                                 },
//                                 style: ButtonStyle(
//                                   foregroundColor:
//                                       MaterialStateProperty.all<Color>(
//                                           Colors.white),
//                                   backgroundColor:
//                                       MaterialStateProperty.all<Color>(
//                                           Colors.red[700]!),
//                                   shape: MaterialStateProperty.all<
//                                       RoundedRectangleBorder>(
//                                     RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5.0),
//                                     ),
//                                   ),
//                                 ),
//                                 child: Text(
//                                   'LOGIN',
//                                   style: TextStyle(
//                                       letterSpacing: deviceWidth / 170),
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           const Text(
//                             "Powered By",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10),
//                             child: SizedBox(
//                               width: deviceHeight / 13,
//                               child: Image.asset(
//                                 'assets/images/sreclogo.png',
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Visibility(
//             visible: isLoading,
//             child: Center(
//               child: SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: CircularProgressIndicator(
//                   backgroundColor: Colors.transparent,
//                   color: isDarkMode ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _requestFocus() {
//     setState(() {
//       FocusScope.of(context).requestFocus(myFocusNode);
//     });
//   }

//   phoneAuth(int number) async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       timeout: const Duration(milliseconds: 60000),
//       phoneNumber: '+91$number',
//       verificationCompleted: (PhoneAuthCredential credential) {},
//       verificationFailed: (FirebaseAuthException e) async {
//         setState(() {
//           isLoading = false;
//         });
//         Snackbar()
//             .showFlushbar(context: context, message: "Verification Failed");
//       },
//       codeSent: (String verificationId, int? resendToken) async {
//         //  Snackbar().showFlushbar(context: context, message: "YAYY");
//         setState(() {
//           isLoading = false;
//         });
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => OTPPage(phoneNumber
//                 // verificationId: verificationId,
//                 // resendToken: resendToken,
//                 // phoneNumber: phoneNumber,
//                 ),
//           ),
//         );
//         // Update the UI - wait for the user to enter the SMS code

//         // // Create a PhoneAuthCredential with the code
//         // PhoneAuthCredential credential = PhoneAuthProvider.credential(
//         //     verificationId: verificationId, smsCode: smsCode);

//         // // Sign the user in (or link) with the credential
//         // await FirebaseAuth.instance.signInWithCredential(credential);
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {},
//     );
//   }
// }

// class Dummy extends StatefulWidget {
//   const Dummy({Key? key}) : super(key: key);

//   @override
//   _DummyState createState() => _DummyState();
// }

// class _DummyState extends State<Dummy> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SaKo"),
//       ),
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection('users').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           (snapshot.hasData ? snapshot.data!.docs.toString() : null);
//           if (!snapshot.hasData) return const Text("Loading");
//           return ListView.builder(
//             itemCount: snapshot.data!.docs.length,
//             itemBuilder: (context, index) => ListTile(
//               onTap: () {
//                 FirebaseFirestore.instance.runTransaction((transaction) async {
//                   DocumentSnapshot freshSnap = await transaction
//                       .get(snapshot.data!.docs[index].reference);
//                   transaction.update(freshSnap.reference, {
//                     'age': freshSnap['age'] + 1,
//                   });
//                 });
//               },
//               title: Text(snapshot.data!.docs[index]['name'].toString()),
//               leading: Text(snapshot.data!.docs[index]['age'].toString()),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
