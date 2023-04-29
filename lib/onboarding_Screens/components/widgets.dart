import 'package:flutter/material.dart';
import 'package:east_african_spice/onboarding_Screens/constants/constants.dart';

class login_signupButton extends StatelessWidget {

  String text;
  VoidCallback onpress;


  login_signupButton(this.text,this.onpress);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onpress,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 40),
        shape: (
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0),
            )
        ),
        backgroundColor: Color(yellowTheme), // Set the background color of the button using a hex code
        foregroundColor:(Colors.black), // Set the text color of the button
      ),
      child: Text(text, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}
//creates a login button that is used in signup and login

class Outlined_signupButton extends StatelessWidget {
  late String text;
  late VoidCallback onPress;
  Outlined_signupButton(this.text,this.onPress);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed:onPress//sign up
      ,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: Size(5, 20),
        side: BorderSide.none, // set the width of the button's border
      ),
      child:Text(
        text,
        style: TextStyle(
          color:Color(yellowTheme),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),),

    );
  }
}
class Logoimage extends StatelessWidget {
  double height ;
  double width ;
  Logoimage(this.height,this.width);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/black.png',
      height: height,
      width:width ,
      fit: BoxFit.cover,
      alignment: Alignment.center,
    );
  }
}

class type_of_Textfield extends StatelessWidget {
  String text;
  type_of_Textfield(this.text);
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
              text,
              style: ktype_of_Textfield,
          )
        ],
      ),

    );
  }
}
//this widget describes the text above the textfield
