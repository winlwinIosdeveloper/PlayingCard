//
//  ViewController.swift
//  PlayingCard
//
//  Created by Win Lwin on 17/07/2023.
//

import UIKit

class ViewController: UIViewController {
	var deck = PlayingCardDeck()

	override func viewDidLoad() {
		super.viewDidLoad()
		for _ in 0...10 {
			if let card = deck.drawRandomCard() {
				print(card)
			}
		}
	}


}

