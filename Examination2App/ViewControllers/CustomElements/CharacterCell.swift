//
//  CharacterCell.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 19.11.2024.
//

import UIKit

class CharacterCell: UITableViewCell {

	private let titileLable = CastomLable(font: "Arial Rounded MT Bold", size: 20)
	private let scrollView = UIScrollView()
	private let stackView = UIStackView()

	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setup()
	}
	
	@available (*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func configure(characterSection: CharacterSection) {
		titileLable.text = "\(characterSection.title.rawValue)"
		titileLable.textColor = .black
		for character in characterSection.character {
			let view = CustomView(character: character)
			stackView.addArrangedSubview(view)
		}
	}
}

// MARK: - Setup View
private extension CharacterCell {
	func setup() {
		titileLable.textColor = .black
		scrollView.showsHorizontalScrollIndicator = false
		[scrollView, titileLable].forEach{contentView.addSubview($0)}
		scrollView.addSubview(stackView)
		setupStackView()
		setupLayout()
	}
	
	func setupStackView() {
		stackView.axis = .horizontal
		stackView.spacing = 16
	}
}


// MARK: - Layout
private extension CharacterCell {
	func setupLayout() {
		[scrollView, titileLable, stackView]
			.forEach{$0.translatesAutoresizingMaskIntoConstraints = false}

		NSLayoutConstraint.activate([
			
			titileLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			titileLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			scrollView.topAnchor.constraint(equalTo: titileLable.bottomAnchor, constant: 8),
			scrollView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
			scrollView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
			scrollView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
			scrollView.heightAnchor.constraint(equalToConstant: 220),
			
			stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
			stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
			stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
			stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
		])
	}
}
