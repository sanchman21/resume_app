import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textformfield extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final Color textcolor;
  final Color textformfieldcolor;
  final TextInputType keyboardType;
  int maxLines = 1;
  FontWeight fontweight = FontWeight.w500;
  double fontsize = 14;

  Textformfield(
      {this.controller,
      this.hinttext,
      this.textcolor,
      this.textformfieldcolor,
      this.keyboardType,
      this.maxLines,
      this.fontweight,
      this.fontsize});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      style: GoogleFonts.lato(
          color: textcolor,
          fontWeight: fontweight,
          fontSize: fontsize,
          decoration: TextDecoration.none),
      keyboardType: keyboardType,
      autofocus: false,
      enableInteractiveSelection: true,
      decoration: InputDecoration(
          hintText: hinttext,
          hintMaxLines: 1,
          hintStyle: GoogleFonts.lato(
              color: textcolor.withOpacity(0.9),
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: textformfieldcolor, width: size.width * 0.006)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: textformfieldcolor, width: size.width * 0.006)),
          errorStyle: GoogleFonts.lato(fontStyle: FontStyle.italic, color: Colors.red)),
    );
  }
}

class Elevatedbutton extends StatelessWidget {
  final Color buttoncolor;
  final String buttontext;
  final Color textcolor;
  final dynamic onpressedFunction;
  final Size size;
  double borderradius = 30.0;
  Elevatedbutton(
      {this.buttoncolor,
      this.textcolor,
      this.buttontext,
      this.onpressedFunction,
      this.size,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttoncolor,
        onPrimary: Theme.of(context).splashColor,
        elevation: 2,
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradius),
          side: BorderSide.none,
        ),
      ),
      onPressed: onpressedFunction,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          buttontext,
          maxLines: 1,
          style: GoogleFonts.lato(
            color: textcolor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class IconElevatedbutton extends StatelessWidget {
  final Color buttoncolor;
  final IconData icon;
  final Color iconcolor;
  final dynamic onpressedFunction;
  final Size size;
  double borderradius = 30.0;
  IconElevatedbutton(
      {this.buttoncolor,
      this.iconcolor,
      this.icon,
      this.onpressedFunction,
      this.size,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttoncolor,
          onPrimary: Theme.of(context).splashColor,
          elevation: 2,
          fixedSize: size,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderradius),
            side: BorderSide.none,
          ),
        ),
        onPressed: onpressedFunction,
        child: Icon(icon, color: iconcolor));
  }
}
