import 'package:flutter/material.dart';
import 'package:naturallangproc/barcodescanner.dart';
import 'package:naturallangproc/textrecog.dart';

class NaturalLangProc extends StatelessWidget {
  const NaturalLangProc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ML Implementation Test",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Google ML Kit Test"),
        ),
        body: const Padding(
            padding: EdgeInsets.all(5),
            child: ExpansionTile(
              title: Text("ok"),
              children: [
                CustomCard("Bar Code Scanner", BarCodeScanner()),
                CustomCard(
                  "Text Recognition",
                  Textrecog(),
                  featureCompleted: false,
                )
              ],
            )),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String _label;
  final Widget _viewPage;
  final bool featureCompleted;

  const CustomCard(this._label, this._viewPage,
      {super.key, this.featureCompleted = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: Theme.of(context).primaryColor,
        title: Text(
          _label,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          if (!featureCompleted) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('This feature has not been implemented yet')));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => _viewPage));
          }
        },
      ),
    );
  }
}
