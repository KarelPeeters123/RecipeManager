//
//  ViewController.swift
//  RecipeManager
//
//  Created by Karel Peeters on 28/03/2021.
//

import UIKit

class ViewController: UIViewController {
    var store = RecipeStore();

    @IBOutlet var recipeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTable.delegate = self
        recipeTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked " + store.getRecipes()[indexPath.row].name);
        let vc = storyboard?.instantiateViewController(identifier: "recipe") as! RecipeController;
        vc.title = store.getRecipes()[indexPath.row].name;
        vc.store = store;
        vc.currentRecipe = store.getRecipes()[indexPath.row];
        vc.navigationItem.largeTitleDisplayMode = .never;
        self.navigationController?.pushViewController(RecipeController(recipeStore: store, recipe: store.getRecipes()[indexPath.row]), animated: true);
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.getSize();
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = store.getRecipes()[indexPath.row].name;
        return cell;
    }
}
