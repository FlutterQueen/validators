import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators_example/screens/password_confirmation.dart';

void main() => runApp(
      MaterialApp(
        title: 'Queen Validators 👑',
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        home: PasswordConfirmationExample(),
        theme: ThemeData.light(),
      ),
    );

class HomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Queen Validators 👑'), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          final isFormValid = _formKey.currentState!.validate();
          if (isFormValid) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('the form is valid')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('not valid')));
          }
        },
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'IsRequired'),
                validator: qValidator([
                  // if textFeild trimmed value lenght > 0 it will pass
                  IsRequired(),
                ]),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'IsOptional'),
                validator: qValidator([
                  // if the textField contains value the rest of the validators will run
                  // else it will pass the validation with checking them
                  IsOptional(),

                  /// the input value must be a valid (`well formatted`) email address
                  IsEmail(),
                ]),
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'IsRequired AND IsEmail'),
                validator: qValidator([
                  IsRequired(),

                  /// the input value must be a valid (`well formatted`) email address
                  IsEmail(),
                ]),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'MinLenght AND IsEmail'),
                validator: qValidator([
                  IsRequired(),

                  /// the input min length must be >= 5
                  MinLength(10),

                  /// the input max length must be <= 10
                  MaxLength(15),
                ]),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'IsIn AND IsNotIn'),
                validator: qValidator([
                  IsRequired(),
                  IsIn(['white', 'black', 'gray']),
                  IsNotIn(['red', 'blue', 'orange']),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
