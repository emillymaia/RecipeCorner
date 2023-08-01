//
//  RecipesTableViewCell.swift
//  RecipeCorner
//
//  Created by Emilly Maia on 19/07/23.
//

import UIKit

final class RecipesTableViewCell: UITableViewCell {
    static let identifier = "RecipesTableViewCell"
    
    private let cell: UIView = {
        let cell = UIView()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.backgroundColor = UIColor(red: 0.78, green: 0.67, blue: 0.87, alpha: 1.00)
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSizeMake(2.5, 2.5)
        cell.layer.shadowRadius = 0.9
        cell.layer.shadowOpacity = 0.2
        cell.layer.cornerCurve = .circular
        cell.layer.cornerRadius = 13
        return cell
    }()
    
    private let title: UILabel = {
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .systemFont(ofSize: 18)
        return title
    }()
    
    private let icon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        icon.isUserInteractionEnabled = false
        return icon
    }()
    
    func configureCell(text: String, icon name: String) {
        title.text = text
        icon.image = UIImage(named: name)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubViews()
        setupConstraints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
        icon.image = nil
    }
}

extension RecipesTableViewCell: ConfigureView {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            cell.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0.3),
            cell.centerYAnchor.constraint(equalTo: centerYAnchor),
            cell.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0.8),
            cell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            title.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.leadingAnchor.constraint(equalToSystemSpacingAfter: icon.trailingAnchor, multiplier: 4),
            title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
                   
            icon.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            icon.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 8),
            icon.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
    
    func addSubViews() {
        contentView.addSubview(cell)
        cell.addSubview(title)
        cell.addSubview(icon)
    }
}
