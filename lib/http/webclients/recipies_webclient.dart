import 'package:http/http.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:forkfyapp/configs/constants.dart';

class RecipiesWebClient {


  Future<dynamic> findRecipesBySearchTerm (String searchTerm) async{
    var uri = Uri.https(baseUrl, endpointUrl, {'search': '${searchTerm}'});
    final Response response = await get(uri);
    log('${response.body}');
    return response.body;
  }



}