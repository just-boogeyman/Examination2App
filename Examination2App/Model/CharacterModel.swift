//
//  CharacterModel.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import Foundation

enum CharacterStatus: String {
	case alive = "Alive"
	case dead = "Dead"
	case unknown = "Unknown"
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
	let description = """
A thin, tall man with gray hair, a fused eyebrow, and a greenish burp on his lips.
He usually wears a white robe, a light blue turtleneck, and dark brown pants with a black belt.
Rick always has a homemade portal gun with him, with which he can travel through different dimensions.
Rick is a skeptic, extremely cynical, grumpy, but not without a sense of humor, mostly black.
Because of his genius and character, he has made many enemies in the Universe.
"""
}
