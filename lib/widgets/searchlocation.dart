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
    'Russia',
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
    'China',
    'Shrilanka',
    'Canada',
    'Russia'
  ];

  final TextEditingController _textEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 1.5)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TypeAheadField(
            suggestionsCallback: (pattern) => location_list.where(
                (item) => item.toLowerCase().contains(pattern.toLowerCase())),
            itemBuilder: (context, item) {
              return ListTile(title: Text(item.toString()));
            },
            onSuggestionSelected: (String val) {
              this._textEditingController.text = val;
              print(val);
            },
            getImmediateSuggestions: true,
            key: formKey,
            hideSuggestionsOnKeyboardHide: true,
            hideOnEmpty: false,
            textFieldConfiguration: TextFieldConfiguration(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        _textEditingController.clear();
                      },
                    ),
                    hintText: 'Search',
                    border: InputBorder.none),
                controller: _textEditingController),
          ),
        ),
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}
