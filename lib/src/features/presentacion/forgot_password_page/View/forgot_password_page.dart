
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/back_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Forgot pasword',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 450.0,
    height: 55.0,
    margin: const EdgeInsets.only(top: 30),
    child: RaisedButton(
      onPressed: () {
        _showAlert(context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Theme.of(context).accentColor,
      child: const Text(
        'Send',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}

void _showAlert(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children:  [
                const Image(
                  image: NetworkImage(
                      'https://res.cloudinary.com/developments/image/upload/v1655764195/App_Agachaditos/lock_hww2gr.png'),
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: const  EdgeInsets.all(15.0),
                  child: Text('Your password has been reset',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text("'You'll shortle receive an email with a code to setup a new password ",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0
                    ),
                  ),

                ),
                _doneButton(context),
              ],
            ),
          ),
        );
      });
}

Widget _doneButton( BuildContext context){
  return Container(
    width: 450.0,
    height: 55.0,
    margin: const  EdgeInsets.only(top: 50),
    child: RaisedButton(
      onPressed: () {
        // Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Theme.of(context).accentColor,
      child: const Text(
        'Done',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}