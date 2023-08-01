//
//  MyRecipesViewController.swift
//  RecipeCorner
//
//  Created by Emilly Maia on 19/07/23.
//

import UIKit

final class RecipesViewController: UIViewController {
    private let recipesView = RecipesView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = recipesView
        recipesView.recipesTableView.delegate = self
        recipesView.recipesTableView.dataSource = self
        recipesView.recipesTableView.reloadData()
    }
}

extension RecipesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesMoc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecipesTableViewCell.identifier, for: indexPath) as? RecipesTableViewCell else {
            return UITableViewCell(style: .default, reuseIdentifier: RecipesTableViewCell.identifier)
        }

        let title = recipesMoc[indexPath.row].name
        let image = recipesMoc[indexPath.row].icon
        
        cell.configureCell(text: title, icon: image)
        
         return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipeTutorialsViewController = RecipeTutorialsViewController()
        
        recipeTutorialsViewController.tutorial = recipesMoc[indexPath.row].tutorial

        self.navigationController?.pushViewController(recipeTutorialsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (view.window?.windowScene?.screen.bounds.height ?? 800) * 0.1
    }
}

