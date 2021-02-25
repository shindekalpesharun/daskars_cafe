import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.dstATop,
          ),
          image: AssetImage("assets/images/welcome_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Image.asset("assets/images/logo.png"),
                    Text(
                      "Daskar's",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Color(0xffff2020),
                          // letterSpacing: .5,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Text(
                      "Cafe",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Color(0xffff2020),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "BEST FOOD\nIN YOUR\nCITY",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                    ),
                    SizedBox(
                      height: 48,
                      width: MediaQuery.of(context).size.width / 1,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Get start here",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
