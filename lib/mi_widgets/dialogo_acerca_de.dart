import 'package:flutter/material.dart';

class DialogoAcercaDe extends StatefulWidget {
  const DialogoAcercaDe({Key? key}) : super(key: key);

  @override
  State<DialogoAcercaDe> createState() => _DialogoAcercaDeState();
}

class _DialogoAcercaDeState extends State<DialogoAcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text("Mostrar Dialogo acerca de"),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const AboutDialog(
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: '0705',
            applicationVersion: 'version 1.0.0',
            children: [
              Text('Este texto es creado por alerta'),
            ],
          ),
        );
      },
    ));
  }
}
