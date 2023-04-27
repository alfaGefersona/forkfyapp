import 'package:forkfyapp/models/recipe.dart';

class RecipeData {
  RecipeData({required this.recipes});

  final List<Recipe> recipes;

  @override
  String toString() {
    return 'RecipeData{recipes: $recipes}';
  }


  factory RecipeData.fromJson(Map<String, dynamic> json) {
    var recipeList = json['recipes'] as List;
    List<Recipe> recipes =
    recipeList.map((recipeJson) => Recipe.fromJson(recipeJson)).toList();

    return RecipeData(recipes: recipes);
  }

  Map<String, dynamic> toJson() {
    return {
      'recipes': recipes.map((recipe) => recipe.toJson()).toList(),
    };
  }
}
