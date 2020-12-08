import 'package:cook_book/models/meal.dart';
import 'package:cook_book/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '';
class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  const FavouriteScreen({this.favouriteMeals});
  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some !'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            duration: favouriteMeals[index].duration,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,

          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
