//
//  RecipeTutorialsView.swift
//  RecipeCorner
//
//  Created by Emilly Maia on 21/07/23.
//

import UIKit

final class RecipeTutorialsView: UIView {
    
    let recipeTutorial: UILabel = {
        let tutorial = UILabel()
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.font = .systemFont(ofSize: 17)
        tutorial.numberOfLines = 0
        return tutorial
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

extension RecipeTutorialsView: ConfigureView {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            recipeTutorial.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            recipeTutorial.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            recipeTutorial.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
        ])
    }
    
    func addSubViews() {
        addSubview(recipeTutorial)
    }
}
