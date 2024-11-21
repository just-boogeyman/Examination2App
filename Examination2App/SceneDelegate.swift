//
//  SceneDelegate.swift
//  Examination2App
//
//  Created by Ярослав Кочкин on 18.11.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = scene as? UIWindowScene else { return }
		window = UIWindow(windowScene: windowScene)
		
		let viewController = CharacterTableView()
		viewController.characterDataManager = build()
		
		window?.rootViewController = viewController
		window?.makeKeyAndVisible()
	}
}

extension SceneDelegate {
	private func build() -> ICharacterDataManeger {
		let repository = Repository()
		let characterDataManager = CharacterDataManamer()
		
		characterDataManager.addModels(repository.getModels())
		return characterDataManager
	}
}
