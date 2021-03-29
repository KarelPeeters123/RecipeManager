//
//  RecipeController.swift
//  RecipeManager
//
//  Created by Karel Peeters on 29/03/2021.
//

import Foundation
import UIKit

class RecipeController: UIViewController {
    var store: RecipeStore;
    var currentRecipe: Recipe;
    
    init(recipeStore: RecipeStore, recipe: Recipe) {
        store = recipeStore;
        currentRecipe = recipe;
        super.init(nibName: nil, bundle: nil);
    }
    
    required init?(coder: NSCoder) {
        store = RecipeStore();
        currentRecipe = store.getRecipes()[0];
        super.init(nibName: nil, bundle: nil);
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red;
        title = currentRecipe.name;
        // Do any additional setup after loading the view.
    }


}
