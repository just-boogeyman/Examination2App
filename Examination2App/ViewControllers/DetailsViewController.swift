//
//  DetailsViewController.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 22.11.2024.
//

import UIKit

class DetailsViewController: UIViewController {
	
	private let imageView = CastomImageView(imageName: "1")
	private let nameLable = CastomLable(font: "Arial Rounded MT Bold", size: 20)
	private let speciesLable = CastomLable(font: "Arial Rounded MT Bold", size: 20)
	private let detailsLable = CastomLable(font: "Arial Rounded MT Bold", size: 16)

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .lightGray
		setupView()
		setupLayout()
	}
	
	func configure(chatacter: Character) {
		imageView.image = UIImage(named: chatacter.imageName)
		nameLable.text = chatacter.name
		speciesLable.text = chatacter.species
		detailsLable.text = chatacter.description
		switch chatacter.status {
		case .alive:
			imageView.layer.borderColor = UIColor.green.cgColor
		case .dead:
			imageView.layer.borderColor = UIColor.red.cgColor
		case .unknown:
			imageView.layer.borderColor = UIColor.systemCyan.cgColor
		}
	}
}

private extension DetailsViewController {
	func setupView() {
		detailsLable.numberOfLines = 0
		detailsLable.textAlignment = .justified
		[imageView, nameLable, speciesLable, detailsLable]
			.forEach{view.addSubview($0)}
	}
}

private extension DetailsViewController {
	func setupLayout() {
		[imageView, nameLable, speciesLable, detailsLable]
			.forEach{$0.translatesAutoresizingMaskIntoConstraints = false}
		
		NSLayoutConstraint.activate([
			imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 32),
			imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
			imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
			
			nameLable.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 12),
			nameLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			speciesLable.topAnchor.constraint(equalTo: nameLable.bottomAnchor, constant: 8),
			speciesLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			detailsLable.topAnchor.constraint(equalTo: speciesLable.bottomAnchor, constant: 24),
			detailsLable.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
			detailsLable.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
	}
}
