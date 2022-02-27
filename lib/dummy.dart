import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String? appVersion;

  @override
  void initState() {
    main();
    super.initState();
  }

  Future<void> main() async {
    // final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      // appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.keyboard_arrow_left_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'About',
                      // style: GoogleFonts.spartan(
                      //     textStyle: const TextStyle(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                      //   fontSize: 30,
                      // )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: const SizedBox(
                            width: 150,
                            child: Image(
                                image: AssetImage('assets/ic_launcher.png')),
                          ),
                        ),
                        const SizedBox(height: 17),
                        Text(
                          'Butterfly Effect',
                          // style: GoogleFonts.spartan(
                          //     textStyle: const TextStyle(
                          //   color: Colors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 30,
                          // )),
                        ),
                        Text(
                          'v$appVersion',
                          //   style: GoogleFonts.spartan(
                          //       textStyle: const TextStyle(
                          //     color: Colors.white,
                          //   )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: Column(
                        children: [
                          Text(
                            'Butterfly Effect Will Be An Open-Source Project\nAnd Can Be Found On',
                            textAlign: TextAlign.center,
                            // style: GoogleFonts.spartan(
                            //     textStyle: const TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 14,
                            // )),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              launch('https://github.com/suryanarayanms');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Image(
                                    height: 35,
                                    image:
                                        AssetImage('assets/github_icon_2.png')),
                                const SizedBox(width: 7),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: Text(
                                    'Github',
                                    // style: GoogleFonts.spartan(
                                    //     textStyle: const TextStyle(
                                    //   color: Colors.white,
                                    //   fontWeight: FontWeight.bold,
                                    //   fontSize: 25,
                                    // )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Crush Over Love ❤️💫',
                            textAlign: TextAlign.center,
                            // style: GoogleFonts.spartan(
                            //     textStyle: const TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 16,
                            // )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: Column(
                        children: [
                          Text(
                            'For Queries',
                            textAlign: TextAlign.center,
                            // style: GoogleFonts.spartan(
                            //     textStyle: const TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 16,
                            // )),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              final Uri emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'suryanarayan.moola@gmail.com',
                              );
                              launch(emailLaunchUri.toString());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.mail_outline_outlined,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 7),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: Text(
                                    'Contact Us',
                                    // style: GoogleFonts.spartan(
                                    //     textStyle: const TextStyle(
                                    //   color: Colors.white,
                                    //   fontWeight: FontWeight.bold,
                                    //   fontSize: 16,
                                    // )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 17)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 30, 5, 20),
                      child: Center(
                        child: Text(
                          'Made with ❤️ by Surya',
                          // style: GoogleFonts.spartan(
                          //     textStyle: const TextStyle(
                          //   color: Colors.white,
                          //   fontSize: 12,
                          // )),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
