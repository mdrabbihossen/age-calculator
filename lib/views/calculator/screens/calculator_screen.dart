import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  DateTime date = DateTime.now();
  DateTime initialDate = DateTime.now();
  DateTime firstDate = DateTime(1900);
  DateTime lastDate = DateTime.now();

  String? ageInYears;
  String ageInMonths = '';
  String ageInDays = '';
  String ageInHours = '';
  String ageInMinutes = '';
  String ageInSeconds = '';

  void calculateAge() {
    // calculate age in years
    ageInYears = (initialDate.year - date.year).toString();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Calculate Your Age',
          style: GoogleFonts.indieFlower(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
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
                    InkWell(
                      onTap: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: initialDate,
                          firstDate: firstDate,
                          lastDate: lastDate,
                        );
                        if (newDate == null) return;
                        setState(() {
                          date = newDate;
                          calculateAge();
                        });
                      },
                      child: Text(
                        // ignore: unnecessary_null_comparison
                        date != null ? '${date.year}?' : "Tap to select date",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffcbd4f5),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ageInYears == null ? "" : 'You are $ageInYears Years Old',
                    style: GoogleFonts.raleway(
                      color: Color(0xff54585c),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // SizedBox(height: 5),
                  // Text(
                  //   'Your Age in Months : ${ageInMonths}',
                  //   style: GoogleFonts.raleway(
                  //     color: Color(0xff54585c),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   'Your Age in Days : ${ageInDays}',
                  //   style: GoogleFonts.raleway(
                  //     color: Color(0xff54585c),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   'Your Age in Hours : ${ageInHours}',
                  //   style: GoogleFonts.raleway(
                  //     color: Color(0xff54585c),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   'Your Age in Minutes  : ${ageInMinutes}',
                  //   style: GoogleFonts.raleway(
                  //     color: Color(0xff54585c),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   'Your Age in Seconds : ${ageInSeconds}',
                  //   style: GoogleFonts.raleway(
                  //     color: Color(0xff54585c),
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // if age greater than 18 then show this
                  if (ageInYears != null && int.parse(ageInYears!) >= 18)
                    Text(
                      'You are eligible to vote',
                      style: GoogleFonts.raleway(
                        color: Color(0xff54585c),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
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
