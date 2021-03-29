//
//  RecipeStore.swift
//  RecipeManager
//
//  Created by Karel Peeters on 29/03/2021.
//

import Foundation

class RecipeStore {
    var recipes = [Recipe]();
    init() {
        let recipe1 = Recipe(id: "1", name: "Pancake", time: 40, difficulty: "Medium", ingredients: [], instructions:[]);
        let recipe2 = Recipe(id: "2", name: "Chocolate Cake", time: 40, difficulty: "Medium", ingredients: [], instructions:[])
        let recipe3 = Recipe(id: "3", name: "Brownies", time: 40, difficulty: "Medium", ingredients: [], instructions:[])
        addRecipe(recipe: recipe1);
        addRecipe(recipe: recipe2);
        addRecipe(recipe: recipe3);
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe);
    }
    
    func getRecipes() -> [Recipe] {
        return recipes;
    }
    func getSize() -> Int {
        return recipes.count;
    }
    func getRecipe(identifier: String) -> Recipe{
        return recipes.filter{
            $0.id == identifier;
        }[0]
    }
    
}
