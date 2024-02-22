// ignore_for_file: file_names, sort_child_properties_last, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  get tipoDocumentoValue => null;

  bool? get showPassword => null;
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/Fondo-login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('img/LogoSena.png'),
              ),
              const Text(
                'Ingreso usuarios registrados',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: null,
                            items: const [
                              DropdownMenuItem<String>(
                                child: Text('Cédula'),
                                value: 'Cedula',
                              ),
                              DropdownMenuItem<String>(
                                child: Text('Cédula de Extranjería'),
                                value: 'Cedula de Extranjeria',
                              )
                            ],
                            decoration: const InputDecoration(
                              labelText: 'Tipo de Documento',
                            ),
                            onChanged: (String? value) {
                              Null;
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Número Documento',
                      ),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Contraseña'),
                      onChanged: (value) {
                        setPassword(value);
                      },
                    ),
                  ],
                ),
              ),
              const Text('Se me olvido la contraseña'),
              const Text('Ingresar'),
            ]
          ),
        )
    )
    );
  }

  void setTipoDocumentoValue(value) {}

  void setPassword(String value) {}

  ElevateButton({required Null Function() onPressed, required Text child}) {}
}
