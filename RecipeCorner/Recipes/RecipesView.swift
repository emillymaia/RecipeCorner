//
//  MyRecipesView.swift
//  RecipeCorner
//
//  Created by Emilly Maia on 14/07/23.
//

import UIKit

final class RecipesView: UIView {
    
    let recipesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isUserInteractionEnabled = true
        tableView.allowsSelection = true
        tableView.separatorStyle = .none
        tableView.register(RecipesTableViewCell.self, forCellReuseIdentifier: RecipesTableViewCell.identifier)
        return tableView
    }()
    
    let registerRecipeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RecipesView: ConfigureView {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            recipesTableView.topAnchor.constraint(equalTo: topAnchor),
            recipesTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            recipesTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            recipesTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func addSubViews() {
        addSubview(recipesTableView)
    }
}
