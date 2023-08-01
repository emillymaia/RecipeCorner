//
//  RecipeTutorialsViewController.swift
//  RecipeCorner
//
//  Created by Emilly Maia on 21/07/23.
//

import UIKit

final class RecipeTutorialsViewController: UIViewController {
    private let recipeTutorialsView = RecipeTutorialsView()
    
    var tutorial: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view = recipeTutorialsView
        recipeTutorialsView.recipeTutorial.text = tutorial
        view.backgroundColor = .systemBackground
    }
}
