import 'package:drug_traffiking/homepage/homepage.dart';
import 'package:drug_traffiking/model/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:math';

import 'package:image_picker/image_picker.dart';

class UploadDetails extends StatefulWidget {
  const UploadDetails({Key? key}) : super(key: key);

  @override
  _UploadDetailsState createState() => _UploadDetailsState();
}

class _UploadDetailsState extends State<UploadDetails> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    String information = "";
    FocusNode myFocusNode = FocusNode();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
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
              child: Text('Report a',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text('Crime',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          pickImageC();
                        },
                        child: image != null
                            ? Container(
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10)),
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image.file(image!)),
                              )
                            : Container(
                                alignment: Alignment.center,
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Color(0xFF21BFBD),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/gallery.png',
                                      height: 50,
                                    ),
                                    SizedBox(height: 12),
                                    Text("Click here to upload",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0)),
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // image != null ? Image.file(image!) : Text("No image selected"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: TextFormField(
                cursorColor: Color(0xFF21BFBD),
                focusNode: myFocusNode,
                autocorrect: true,
                autofocus: false,
                controller: TextEditingController()
                  ..text = information
                  ..selection =
                      TextSelection.collapsed(offset: information.length),
                keyboardType: TextInputType.multiline,
                // expands: true,
                inputFormatters: [
                  // FilteringTextInputFormatter.allow(RegExp("[0-9]+")),
                  LengthLimitingTextInputFormatter(100)
                ],
                onChanged: (text) {
                  information = text;
                },
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "Enter some details about the crime scene",
                  hintStyle: TextStyle(fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF21BFBD)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF21BFBD)),
                      borderRadius: BorderRadius.circular(10)),
                  hintMaxLines: 2,
                ),
                maxLines: null,
                minLines: null,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (image == null) {
                      Snackbar().showFlushbar(
                          context: context, message: "Upload an image");
                    } else if (information == "") {
                      Snackbar().showFlushbar(
                          context: context, message: "Enter some information");
                    } else {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                      print(information);
                      print(image);
                    }
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF21BFBD)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
