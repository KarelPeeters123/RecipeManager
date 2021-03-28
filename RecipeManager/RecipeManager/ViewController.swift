//
//  ViewController.swift
//  RecipeManager
//
//  Created by Karel Peeters on 28/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var recipeTable: UITableView!
    
    var recipes = [
        "Pancakes",
        "Brownies",
        "Cinnamon Rolls"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTable.delegate = self
        recipeTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked row");
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = recipes[indexPath.row];
        return cell
    }
}
