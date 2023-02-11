import 'package:flutter/material.dart';

class FormExample extends StatelessWidget {
  const FormExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conditional If Expression'),
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Declaración de variables
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario con validación'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return 'Por favor ingrese su nombre';
                      }
                      return null;
                    },
                    onSaved: (value) => _name = value as String,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return 'Por favor ingrese su email';
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value as String,
                  ),
                  CheckboxListTile(
                    title: Text('Acepto los términos y condiciones'),
                    value: _acceptTerms,
                    onChanged: (value) {
                      setState(() {
                        _acceptTerms = true;
                      });
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Si la validación es correcta, se muestra un diálogo
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Text(
                                  'Nombre: $_name\nEmail: $_email\nAcepta términos: $_acceptTerms'),
                            ),
                          );
                        }
                      },
                      child: Text('Enviar'),
                    ),
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
