// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mi_primer_proyecto/widgets/custom_button.dart';
// ignore: unused_import
import 'package:mi_primer_proyecto/widgets/custon_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController document = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/fondo.png"))),
          child: const Center(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: Image(image: AssetImage("assets/images/LOGO.png")),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                child: CustonTextField(
                    hint: "Identificación",
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    obscuredText: false,
                    cursorColor: Colors.grey,
                    borderFocusColor: Colors.white,
                    labelColor: Color.fromARGB(255, 255, 255, 255)),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                child: CustonTextField(
                    hint: "Contraseña",
                    icon: Icon(
                      Icons.security,
                      color: Colors.white,
                    ),
                    obscuredText: true,
                    cursorColor: Colors.grey,
                    borderFocusColor: Colors.white,
                    labelColor: Color.fromARGB(255, 255, 255, 255)),
              ),

              //botonIngresar
              Padding(
                padding: EdgeInsets.symmetric(vertical: 75.0),
                child: CustomButton(
                    textButton: "Ingresar",
                    // onPressed: onPressed,
                    colorButton: Colors.white,
                    colorText: Color.fromARGB(255, 24, 1, 128)),
              ),
            ]),
          )),
    ));
  }

// // WIDGET INPUT
//   Widget _input(String nombre) {
//     // ignore: avoid_unnecessary_containers
//     return Container(
//       // ignore: avoid_unnecessary_containers
//       child: Container(
//         child: TextField(
//           enableInteractiveSelection: false,
//           autofocus: true,
//           decoration: InputDecoration(
//               suffix: const Image(
//                 image: AssetImage("assets/images/usuario.png"),
//                 width: 20,
//               ),
//               hintText: nombre,
//               // labelText: "Identificación",
//               filled: true,
//               fillColor: const Color.fromARGB(255, 187, 187, 187),
//               hintStyle: const TextStyle(color: Colors.white),
//               // hoverColor: Colors.black26,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(50),
//               )),
//         ),
//       ),
//     );
//   }
}
