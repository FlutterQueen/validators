import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

void main() => runApp(MaterialApp(
      title: 'Queen Validators 👑',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Queen Validators 👑'), centerTitle: true),
      body: Center(
        child: Form(
          key: _formKey,
          child: Card(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('login with email and password'),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'email'),
                    validator: qValidator([
                      IsEmail(),
                      MaxLength(50),
                    ]),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'password'),
                    validator: qValidator([
                      IsNotEmpty(msg: 'required'),
                      MinLength(16, msg: 'password is to short'),
                      MaxLength(50),
                    ]),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    child: Text('validate the form '),
                    onPressed: () {
                      try {
                        bool x = _formKey.currentState.validate();
                        if (x) {
                          Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('pass')));
                        }
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('fails')));
                      } catch (e) {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
