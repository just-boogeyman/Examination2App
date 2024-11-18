//
//  CharacterModel.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import Foundation

enum CharacterStatus {
	case alive
	case dead
	case unknown
}

struct CharacterSection {
	let title: CharacterStatus
	let character: [Character]
}

struct Character {
	let imageName: String
	let number: Int
	let name: String
	let status: CharacterStatus
	let species: String
}
