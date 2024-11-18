//
//  HorizontalScrollView.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import UIKit

class HorizontalScrollView: UIView {
	private let scrollView = UIScrollView()
	private let stackView = UIStackView()
	private let titleLable = UILabel()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
	}
	
	@available (*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func configure(characters: [Character]) {
		
	}
}

private extension HorizontalScrollView {
	func setupView() {
		scrollView.addSubview(stackView)
		scrollView.addSubview(titleLable)
		addSubview(scrollView)
		
		setupStackView()
		setupLable()
	}
	
	func setupStackView() {
		stackView.axis = .horizontal
		stackView.spacing = 10
	}
	
	func setupLable() {
		
	}
}

private extension HorizontalScrollView {
	func setupScrollViewLayout() {
		[scrollView, stackView, titleLable]
			.forEach{$0.translatesAutoresizingMaskIntoConstraints = false}
		
		NSLayoutConstraint.activate([
			titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 8),
			titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
			
			scrollView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 8),
			scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
			scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
			scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
			
			stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
			stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
			stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
			stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
		])
	}
}
