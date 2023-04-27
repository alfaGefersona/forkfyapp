import 'package:forkfyapp/models/recipe_data.dart';

class ApiResponse {
  final String status;

  @override
  String toString() {
    return 'ApiResponse{status: $status, results: $results, data: $data}';
  }

  final int results;
  final RecipeData data;

  ApiResponse({required this.status, required this.results, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'],
      results: json['results'],
      data: RecipeData.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'results': results,
      'data': data.toJson(),
    };
  }
}
