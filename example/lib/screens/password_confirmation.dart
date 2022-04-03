// import 'package:flutter/material.dart';
// import 'package:queen_validators/queen_validators.dart';

// class PasswordConfirmationExample extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();
//   final _passwordConfrimationController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Queen Validators 👑'),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.check),
//         onPressed: () {
//           final isFormValid = _formKey.currentState!.validate();
//           if (isFormValid) {
//             ScaffoldMessenger.of(context)
//                 .showSnackBar(SnackBar(content: Text('the form is valid')));
//           } else {
//             ScaffoldMessenger.of(context)
//                 .showSnackBar(SnackBar(content: Text('not valid')));
//           }
//         },
//       ),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListView(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'password'),
//                 controller: _passwordController,
//                 validator: qValidator([
//                   IsRequired(),
//                   Match(_passwordConfrimationController.text),
//                 ]),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//labelText: 'password confirmation'),
//                 controller: _passwordConfrimationController,
//                 validator: qValidator([
//                   IsRequired(),
//                   Match(_passwordController.text),
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
