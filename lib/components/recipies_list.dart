import 'package:flutter/material.dart';
import 'package:forkfyapp/models/recipe.dart';
import 'package:forkfyapp/http/webclients/recipies_webclient.dart';
import 'package:forkfyapp/components/loading_progress.dart';


class RecipiesList extends StatelessWidget {
  final RecipiesWebClient _recipiesWebClient = RecipiesWebClient();
  final String searchTerm;

  RecipiesList(this.searchTerm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<dynamic>(
        future: _recipiesWebClient.findRecipesBySearchTerm(searchTerm),
          builder: (context,snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return Loading();
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                if( snapshot.hasData ) {
                  final List<Recipe> recipies = snapshot.data;
                  print(recipies);
                }
                print(snapshot);
                return Text('done');
            }
            return Text('Unknow Error');
          }
      ),
    );
  }
}
