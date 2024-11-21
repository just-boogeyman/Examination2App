//
//  ViewController.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import UIKit

class CharacterTableView: UITableViewController {
	
	var characterDataManager: ICharacterDataManeger!
	private let cellIdeuntifier = "cellIdeuntifier"

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		tableView.separatorStyle = .none
		tableView.register(CharacterCell.self, forCellReuseIdentifier: cellIdeuntifier)
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		characterDataManager?.getAllModels().count ?? 0
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdeuntifier, for: indexPath)
				as? CharacterCell else { return UITableViewCell() }
		
		let characterSection = characterDataManager.getAllModels()[indexPath.row]
		cell.selectionStyle = .none
		cell.configure(characterSection: characterSection)
		
		return cell
	}
}

