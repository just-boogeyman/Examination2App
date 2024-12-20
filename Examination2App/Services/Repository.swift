//
//  Repository.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import UIKit

class Repository {}

extension Repository {
	func getModels() -> [CharacterSection] {
		 [
			CharacterSection(
				title: .alive,
				character: [
					Character(
						imageName: "1",
						number: 1,
						name: "Rick Sanchez",
						status: .alive,
						species: "Human"
					),
					Character(
						imageName: "5",
						number: 5,
						name: "Phone-person",
						status: .alive,
						species: "Humanoid"
					),
					Character(
						imageName: "8",
						number: 8,
						name: "Journalist Rick",
						status: .alive,
						species: "Human"
					),
					Character(
						imageName: "11",
						number: 11,
						name: "Snake Arms",
						status: .alive,
						species: "Alien"
					)
				]),
			CharacterSection(
				title: .dead,
				character: [
					Character(
						imageName: "2",
						number: 2,
						name: "Corn detective",
						status: .dead,
						species: "Humanoid"
					),
					Character(
						imageName: "3",
						number: 3,
						name: "Amish Cyborg",
						status: .dead,
						species: "Alien"
					),
					Character(
						imageName: "4",
						number: 4,
						name: "Snake Reporter",
						status: .dead,
						species: "Animal"
					),
					Character(
						imageName: "7",
						number: 7,
						name: "Crystal Poacher",
						status: .dead,
						species: "Alien"
					)
				]
			),
			CharacterSection(
				title: .unknown,
				character: [
					Character(
						imageName: "6",
						number: 6,
						name: "Alien Rick",
						status: .unknown,
						species: "Alien"
			  ),
					Character(
						imageName: "9",
						number: 9,
						name: "Juggling Rick",
						status: .unknown,
						species: "Human"
			  ),
					Character(
						imageName: "10",
						number: 10,
						name: "Mr. Meeseeks",
						status: .unknown,
						species: "Humanoid"
			  )
			]
			)
		]
	}
}
