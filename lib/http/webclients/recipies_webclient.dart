import 'dart:convert';
import 'package:forkfyapp/configs/constants.dart';
import 'package:http/http.dart';
import '../../models/recipie_response.dart';

class RecipiesWebClient {

  Future<ApiResponse> findRecipesBySearchTerm (String searchTerm) async{
    final uri = Uri.https(baseUrl, endpointUrl, {'search': '${searchTerm}'});
    final Response response = await get(uri);
    return ApiResponse.fromJson(jsonDecode(response.body));
  }


}