import 'package:flutter/material.dart';
import 'package:forkfyapp/http/webclients/recipies_webclient.dart';
import 'dart:developer';
import 'package:forkfyapp/components/recipies_list.dart';

class Home extends StatelessWidget {
  final RecipiesWebClient _recipiesWebClient = RecipiesWebClient();
  final TextEditingController _recipiesSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
            controller: _recipiesSearchController,
            onChanged: (text) {
               RecipiesList(text);
              },
          ),

        ],
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Text('Recipies App'),
          Icon(Icons.info),
        ],
      ),
    );
  }
}
