import 'package:flutter/material.dart';
import 'package:forkfyapp/http/webclients/recipies_webclient.dart';
import '../screens/home.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
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
              _recipiesWebClient.findRecipesBySearchTerm(text).then((recipies) =>
              {debugPrint(recipies.toString())});

            },
          ),
        ],
      ),
    );
  }
}
