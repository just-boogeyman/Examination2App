//
//  CustomView.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 19.11.2024.
//

import UIKit

class CustomView: UIView {
	
	private let imageView = CastomImageView(imageName: "1")
	private let nameCharacter = CastomLable(font: "Arial Rounded MT Bold", size: 16)
	private let speciesLable = CastomLable(font: "Arial Rounded MT Bold", size: 16)
	private let liveView = UIView()
	private let liveLineView = UIView()

	
	init(character: Character) {
		super.init(frame: .zero)
		setup(character: character)
		setupLayout()
	}
	
	@available (*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		let shadowPath = UIBezierPath(rect: bounds)
		layer.shadowPath = shadowPath.cgPath
	}
}

// MARK: - Setup View
private extension CustomView {
	func setup(character: Character) {
		backgroundColor = .lightGray
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalToConstant: 200).isActive = true
		heightAnchor.constraint(equalToConstant: 200).isActive = true
		
		layer.cornerRadius = 20
		layer.shadowColor = UIColor.darkGray.cgColor
		layer.shadowRadius = 10
		layer.shadowOpacity = Constants.shadowOpacity
		layer.shadowOffset = Constants.shadowOffset
		
		setupLineView()
		
		switch character.status {
		case .alive:
			settingColor(color: .green)
		case .dead:
			settingColor(color: .red)
		case .unknown:
			settingColor(color: .systemCyan)
		}
		
		imageView.image = UIImage(named: character.imageName)
		nameCharacter.text = character.name
		nameCharacter.textColor = .white

		speciesLable.text = character.species
		speciesLable.textColor = .white
		setupSubView()
	}
	
	func setupSubView() {
		[imageView, speciesLable, nameCharacter, liveView, liveLineView]
			.forEach{addSubview($0)}
	}
	
	func setupLineView() {
		liveView.heightAnchor.constraint(equalToConstant: 3).isActive = true
		liveLineView.heightAnchor.constraint(equalToConstant: 3).isActive = true
	}
}

private extension CustomView {
	func settingColor(color: UIColor) {
		liveView.backgroundColor = color
		liveLineView.backgroundColor = color
		imageView.layer.borderColor = color.cgColor
	}
}

// MARK: - Setup Layout
private extension CustomView {
	func setupLayout() {
		[imageView, speciesLable, nameCharacter, liveView, liveLineView].forEach{
			$0.translatesAutoresizingMaskIntoConstraints = false
		}

		NSLayoutConstraint.activate([
			imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
			imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
			imageView.widthAnchor.constraint(equalToConstant: 100),
			imageView.heightAnchor.constraint(equalToConstant: 100),
			
			liveView.leadingAnchor.constraint(equalTo: leadingAnchor),
			liveView.trailingAnchor.constraint(equalTo: imageView.leadingAnchor),
			liveView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
			
			liveLineView.trailingAnchor.constraint(equalTo: trailingAnchor),
			liveLineView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
			liveLineView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),

			nameCharacter.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
			nameCharacter.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),

			speciesLable.topAnchor.constraint(equalTo: nameCharacter.bottomAnchor, constant: 8),
			speciesLable.centerXAnchor.constraint(equalTo: imageView.centerXAnchor)

		])
	}
}


// MARK: - Constants
private extension CustomView {
	enum Constants {
		static let shadowOpacity: Float = 3
		static let shadowOffset = CGSize(width: 5.0, height: 5.0)
	}
}
