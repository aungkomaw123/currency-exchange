import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Convert extends StatefulWidget {
  var currency = "";
  String country;

  // ignore: use_key_in_widget_constructors
  // Convert(this.country);
  // Convert({Key? key, required this.currency}) : super(key: key);
  Convert({
    Key? key,
    required this.currency,
    required this.country,
  }) : super(key: key);

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {
  final TextEditingController _t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  // String result = '';
  double result = 0.0;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[20],
        centerTitle: true,
        title: const Text("CONVERT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 300,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _t1,
                      decoration: const InputDecoration(
                        hintText: "1",
                        border: OutlineInputBorder(),
                        // labelText: '1',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.country),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: t2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: widget.currency,
                        border: const OutlineInputBorder(),
                        // labelText: widget.currency,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Myanmar"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: Colors.blue[400],
                onPressed: () {
                  setState(() {
                    if (_t1.text.isNotEmpty) {
                      if (widget.country == 'US') {
                        result = double.parse(_t1.text) * 1793.5;
                      } else if (widget.country == 'Thai') {
                        result = double.parse(_t1.text) * 53.418;
                      } else if (widget.country == 'India') {
                        result = double.parse(_t1.text) * 23.948;
                      } else if (widget.country == 'Japan') {
                        result = double.parse(_t1.text) * 1572.6;
                      } else if (widget.country == 'China') {
                        result = double.parse(_t1.text) * 280.61;
                      } else if (widget.country == 'Singapore') {
                        result = double.parse(_t1.text) * 1307.7;
                      } else if (widget.country == 'Malaysia') {
                        result = double.parse(_t1.text) * 423;
                      } else {
                        result = double.parse(_t1.text) * 150.00;
                      }
                    } else if (t2.text.isNotEmpty) {
                      if (widget.country == 'US') {
                        result = double.parse(t2.text) / 1793.5;
                      } else if (widget.country == 'Thai') {
                        result = double.parse(t2.text) / 53.418;
                      } else if (widget.country == 'India') {
                        result = double.parse(t2.text) / 23.948;
                      } else if (widget.country == 'Japan') {
                        result = double.parse(t2.text) / 1572.6;
                      } else if (widget.country == 'China') {
                        result = double.parse(t2.text) / 280.61;
                      } else if (widget.country == 'Singapore') {
                        result = double.parse(t2.text) / 1307.7;
                      } else if (widget.country == 'Malaysia') {
                        result = double.parse(t2.text) / 423;
                      } else {
                        result = double.parse(t2.text) / 1.50;
                      }
                    }
                    _t1.clear();
                    t2.clear();
                  });
                },
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your convert result is " + result.toStringAsFixed(2),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _t1.dispose();
    t2.dispose();
  }
}
