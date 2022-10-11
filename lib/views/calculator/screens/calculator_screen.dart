import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorHome extends StatelessWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text('Calculate Your Age',
            style: GoogleFonts.indieFlower(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffc0c8f2),
              Color(0xffc4cff4),
              Color(0xffcbd4f5),
              Color(0xffd3ddf6),
              Color(0xffdfe3f6),
              Color(0xffe5e8f7),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                height: size.height * 0.12,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 15),
                      child: Text(
                        'How old am I If I was born on',
                        style: GoogleFonts.montserrat(
                          color: Color(0xff54585c),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('Month Click');
                          },
                          child: Text(
                            'MM/',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffcbd4f5),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('Date Click');
                          },
                          child: Text(
                            'DD/',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffcbd4f5),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('Year Click');
                          },
                          child: Text(
                            'YYYY?',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffcbd4f5),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Age in Years : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Age in Months : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Age in Days : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Age in Hours : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Age in Minutes  : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Age in Seconds : 0',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
