import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/fooderlich_assets/empty_list.png'),
            ),
          ),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          const Text(
            'Shopping for ingradients? \n'
            'Tap the + button to write them down!',
            textAlign: TextAlign.center,
          ),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
            ),
            onPressed: () {
              Provider.of<TabManager>(context, listen: false).goToRecipes();
            },
            child: const Text('Browse Recipes'),
          ),
        ],
      ),
    );
  }
}
