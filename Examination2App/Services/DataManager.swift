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
	func getSearchCharacter(_ id: Int) -> Character?
}

class CharacterDataManamer {
	private var characterSections = [CharacterSection]()
}

extension CharacterDataManamer: ICharacterDataManeger {
	func getSearchCharacter(_ id: Int) -> Character? {
		for section in characterSections {
			for character in section.character {
				if character.number == id {
					return character
				}
			}
		}
		return nil
	}
	
	func addModels(_ models: [CharacterSection]) {
		characterSections.append(contentsOf: models)
	}
	
	func getAllModels() -> [CharacterSection] {
		characterSections
	}
}
