
import 'package:flutter/material.dart';


class CheckBoxExample extends StatelessWidget {
  const CheckBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check Box')),
      body: const Center(
        child: LCheckBox(),
      ),
    );
  }
}

class LCheckBox extends StatefulWidget {
  const LCheckBox({super.key});

  @override
  _LCheckBoxState createState() => _LCheckBoxState();
}

class _LCheckBoxState extends State<LCheckBox> {
  List<String> _list = [];

  bool? _isFootBall = false;
  bool? _isCricket = false;
  bool? _isVolleyBall = false;
  bool? _isKabaddi = false;
  bool? _isBaseball = false;
  bool? _isBasketBall = false;
  bool? _isOther = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("FootBall"),
                leading: Checkbox(
                  value: _isFootBall,
                  onChanged: (value) {
                    setState(() {
                      _isFootBall = value;
                      String selectVal = "FootBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Baseball"),
                leading: Checkbox(
                  value: _isBaseball,
                  onChanged: (value) {
                    setState(() {
                      _isBaseball = value;
                      String selectVal = "Baseball";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Cricket"),
                leading: Checkbox(
                  value: _isCricket,
                  onChanged: (value) {
                    setState(() {
                      _isCricket = value;
                      String selectVal = "Cricket";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Kabaddi"),
                leading: Checkbox(
                  value: _isKabaddi,
                  onChanged: (value) {
                    setState(() {
                      _isKabaddi = value;
                      String selectVal = "Kabaddi";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("BasketBall"),
                leading: Checkbox(
                  value: _isBasketBall,
                  onChanged: (value) {
                    setState(() {
                      _isBasketBall = value;
                      String selectVal = "BasketBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("VolleyBall"),
                leading: Checkbox(
                  value: _isVolleyBall,
                  onChanged: (value) {
                    setState(() {
                      _isVolleyBall = value;
                      String selectVal = "VolleyBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Other Games"),
                leading: Checkbox(
                  value: _isOther,
                  onChanged: (value) {
                    setState(() {
                      _isOther = value;
                      String selectVal = "Other Games";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Center(
            child: _list.isEmpty
                ? Text("")
                : RichText(
                    text: TextSpan(
                        text: "Selected Games:\n",
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                        TextSpan(
                            text: '${_list.toString()} ',
                            style: TextStyle(fontSize: 16)),
                      ]))),
      ],
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
