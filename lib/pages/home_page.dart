import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/pages/mail.dart';
import 'package:resume/widgets/common_widgets.dart';
import 'package:resume/pages/projects.dart';
import 'package:resume/services/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String description =
      "I am a Data Scientist in the Health and Biomedical sector, seeking a new challenge in Berlin, Germany, and Europe. I have very deep domain expertise in infectious diseases, diabetes, metabolism, and nutrition; coupled with a strong grounding in data analysis and image processing.";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Text(
              'My Resume',
              style: GoogleFonts.lato(
                  fontSize: 24, color: teal, fontWeight: FontWeight.w600),
            ),
            elevation: 0.0,
            backgroundColor: Colors.white,
          ),
          backgroundColor: teal,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('images/resume_photo.jpeg',
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Text("Sanchit Goel",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
                Text("College Student",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 16)),
                SizedBox(height: size.height * 0.02),
                Container(
                  padding: EdgeInsets.all(size.width * 0.04),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.transparent)),
                  child: Text(
                    description,
                    style: GoogleFonts.lato(color: Colors.black, fontSize: 15),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.055,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconElevatedbutton(
                        borderradius: 5.0,
                        buttoncolor: Colors.white,
                        icon: Icons.call,
                        size: Size(size.width * 0.45, size.height * 0.055),
                        iconcolor: teal,
                        onpressedFunction: () {},
                      ),
                      IconElevatedbutton(
                        borderradius: 5.0,
                        buttoncolor: Colors.white,
                        icon: Icons.mail,
                        size: Size(size.width * 0.45, size.height * 0.055),
                        iconcolor: teal,
                        onpressedFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MailMe()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Elevatedbutton(
                  borderradius: 5.0,
                  buttoncolor: Colors.white,
                  buttontext: 'See Projects',
                  size: Size(size.width, size.height * 0.055),
                  textcolor: teal,
                  onpressedFunction: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Projects()));
                  },
                ),
              ],
            ),
          )),
    );
  }
}
