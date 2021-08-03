import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchLocation extends StatefulWidget {
  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  static const location_list = [
    'Berlin',
    'Bermen',
    'Germany',
    'Saarland',
    'Beirut',
    'India',
    'Indonesia',
    'Japan',
    'Jamaica',
    'USA',
    'UK',
    'New Zealand',
    'New-York',
    'Netherlands',
    'Istanbul',
    'Somalia',
    'South Africa',
    'Georgia',
    'Nepal',
    'China'
  ];

  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 1.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TypeAheadField(
                suggestionsCallback: (pattern) => location_list.where((item) =>
                    item.toLowerCase().contains(pattern.toLowerCase())),
                itemBuilder: (_, String item) => ListTile(title: Text(item)),
                onSuggestionSelected: (String val) {
                  this._textEditingController.text = val;
                  print(val);
                },
                getImmediateSuggestions: true,
                hideSuggestionsOnKeyboardHide: true,
                hideOnEmpty: false,
                noItemsFoundBuilder: (context) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('No Location Found')),
                textFieldConfiguration: TextFieldConfiguration(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    controller: _textEditingController),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.close, size: 25),
            onPressed: () {
              setState(() {
                _textEditingController.clear();
              });
            },
          ),
        ],
      ),
    );
  }
}
