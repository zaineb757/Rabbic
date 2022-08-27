import 'package:Rabbic/shared/firebase_authentication.dart';
import 'package:Rabbic/views/login_screen/components/facebook_button.dart';
import 'package:Rabbic/views/login_screen/components/forgot_password.dart';
import 'package:Rabbic/views/login_screen/components/google_button.dart';
import 'package:Rabbic/views/login_screen/components/login_button.dart';
import 'package:Rabbic/views/login_screen/components/policy_text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/input_field.dart';
class LoginScreen extends StatelessWidget {

  static const routeName = '/loginPage';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget login(IconData icon) {
    return Container(
      height: 50,
      width: 115,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          TextButton(onPressed: () {}, child: Text('Login')),
        ],
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle, TextInputType keyboardType) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 0, right: 25),
        child: TextField(
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle: TextStyle(fontSize: 18, color: Colors.white70),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'circe'
                  ),),

                ],
              ),
            ),
            SizedBox(height: 30,),

            Expanded(
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 50, right: 10, bottom: 50)),
                  Text("Rabbic App",style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'circe',
                      color:Colors.deepPurple
                  ),),
                  Container(padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 50, right: 10, bottom: 50)),
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/rabbit_logo.png'),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                  Container(padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 50, right: 10, bottom: 0)),
                  Container(

                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        textAlign: TextAlign.left,
                        obscureText: true,
                        decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: 'إسم المستخدم',


                        ),
                      )
                  ),

                  Container(
                      height: 50,
                      width: 500,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                      child: ElevatedButton(

                        child: const Text('دخول'),

                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                          print(emailController.text);


                        },
                        style: ElevatedButton.styleFrom(
                          primary:  Colors.deepOrange,
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          /*textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)*/
                        ),

                      )
                  ),



                ],
              ),
            ),

          ],
        ),
      ),
    );
    /*return Scaffold(
  body: Container(
    height: 1000,
    width: double.infinity,
    //width: MediaQuery.of(context).size.width,
   // height: MediaQuery.of(context).size.height*0.4,


  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      child:Text("Rabbic App",style: TextStyle(
          fontSize: 30,
          fontFamily: 'circe',
          color:darkBlue
      ),
      ),
    ),
  Container(
  height: 380,
 // width: double.infinity,

  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
  ),
  child: Padding(
  padding: const EdgeInsets.all(0.0),
  child: Column(
 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  //SizedBox(height: 45),
  userInput(emailController, 'إسم المستخدم', TextInputType.emailAddress),
  //userInput(passwordController, 'Password', TextInputType.visiblePassword),
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.4,
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage('asset/images/gad.png'),
              fit: BoxFit.contain
          )
      ),),
  Container(
  height: 30,
  // for an exact replicate, remove the padding.
  // pour une réplique exact, enlever le padding.
  padding: const EdgeInsets.only(top: 0, left: 70, right: 70),
  child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  color: Colors.deepOrangeAccent,
  onPressed: () {
  print(emailController);
  print(passwordController);
  Provider.of<Auth>(context, listen: false).login(emailController.text, passwordController.text);
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => SuccessfulPage()));
  },
  child: Text('تأكيد', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white,),),
  ),

  ),

  //SizedBox(height: 20),

  /*SizedBox(height: 20),
  Padding(
  padding: const EdgeInsets.only(top: 25.0),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  login(Icons.add),
  login(Icons.book_online),
  ],
  ),
  ),*/
 // Divider(thickness: 0, color: Colors.white),

  /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text('Don\'t have an account yet ? ', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                    TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  ],
                ),
                  */
  ],
  ),
  ),
  ),

  ],
  ),
  ),
  );*/
  }
}