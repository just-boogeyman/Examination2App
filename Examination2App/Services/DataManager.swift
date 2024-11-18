//
//  DataManager.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import UIKit

protocol ICharacterDataManeger {
	func addModels(_ models: [CharacterSection])
	func getAllModels() -> [CharacterSection]
}

class CharacterDataManamer {
	private var characterSections = [CharacterSection]()
}

extension CharacterDataManamer: ICharacterDataManeger {
	func addModels(_ models: [CharacterSection]) {
		characterSections.append(contentsOf: models)
	}
	
	func getAllModels() -> [CharacterSection] {
		characterSections
	}
}
