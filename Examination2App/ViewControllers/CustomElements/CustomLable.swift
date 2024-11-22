//
//  CustomLable.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 21.11.2024.
//

import UIKit

class CastomLable: UILabel {
	
	var nameInstance: String?
	
	init(font: String, size: CGFloat) {
		super.init(frame: .zero)
		setupLable(fontName: font, size: size)
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

// MARK: - SetupLable
extension CastomLable {
	private func setupLable(fontName: String, size: CGFloat) {
		font = UIFont(name: fontName, size: size)
		textColor = .white
		textAlignment = .center
	}
}
