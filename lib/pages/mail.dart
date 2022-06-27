import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/services/colors.dart';
import 'package:resume/widgets/common_widgets.dart';

class MailMe extends StatefulWidget {
  const MailMe({Key key}) : super(key: key);

  @override
  State<MailMe> createState() => _MailMeState();
}

class _MailMeState extends State<MailMe> {
  TextEditingController _subject = TextEditingController();
  TextEditingController _body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            'Mail Me',
            style: GoogleFonts.lato(
                fontSize: 24, color: teal, fontWeight: FontWeight.w600),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: teal,
        body: Align(
          alignment: Alignment.topCenter,
          child: ListView(
            padding: EdgeInsets.only(
                left: size.width * 0.04,
                right: size.width * 0.04,
                top: size.height * 0.02),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Textformfield(
                hinttext: 'Subject',
                controller: _subject,
                keyboardType: TextInputType.name,
                maxLines: 2,
                textcolor: Colors.white,
                textformfieldcolor: Colors.white,
              ),
              SizedBox(height: size.height * 0.01),
              Textformfield(
                hinttext: 'Body',
                controller: _body,
                keyboardType: TextInputType.name,
                maxLines: 20,
                textcolor: Colors.white,
                textformfieldcolor: Colors.white,
              ),
              SizedBox(height: size.height * 0.01),
              Elevatedbutton(
                borderradius: 5.0,
                buttoncolor: Colors.white,
                buttontext: 'See Projects',
                size: Size(size.width, size.height * 0.055),
                textcolor: teal,
                onpressedFunction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
