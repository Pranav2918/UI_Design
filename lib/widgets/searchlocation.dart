import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

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
                child: AutoCompleteTextField(
                  controller: _textEditingController,
                  suggestions: location_list,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Search'),
                  itemFilter: (item, query) {
                    return item
                        .toString()
                        .toLowerCase()
                        .startsWith(query.toLowerCase());
                  },
                  itemSorter: (a, b) {
                    return a.toString().compareTo(b.toString());
                  },
                  itemSubmitted: (item) {
                    _textEditingController.text = item.toString();
                  },
                  itemBuilder: (context, suggestion) {
                    return Container(
                      padding: EdgeInsets.all(18.0),
                      child: Text(suggestion.toString(),
                          style: TextStyle(color: Colors.black)),
                    );
                  },
                  submitOnSuggestionTap: true,
                  clearOnSubmit: false,
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                  key: null,
                )),
          ),
          IconButton(
            icon: Icon(Icons.close, size: 25),
            onPressed: () {
              _textEditingController.clear();
            },
          ),
        ],
      ),
    );
  }
}
