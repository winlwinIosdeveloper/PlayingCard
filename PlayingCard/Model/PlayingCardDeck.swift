//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Win Lwin on 17/07/2023.
//

import Foundation

struct PlayingCardDeck {
	var cards = [PlayingCard]()
	
	mutating func drawRandomCard() -> PlayingCard? {
		if cards.count > 0 {
			let randomIndex = cards.count.arc4random
			return cards.remove(at: randomIndex)
		} else {
			return nil
		}
		
	}
	
	init() {
		for rank in PlayingCard.Rank.allRank {
			for suit in PlayingCard.Suit.allSuit {
				let card = PlayingCard(suit: suit, rank: rank)
				cards.append(card)
			}
		}
	}
}

extension Int {
	var arc4random: Int {
		if self < 0 {
			return -Int(arc4random_uniform(UInt32(self)))
		} else if self > 0 {
			return Int(arc4random_uniform(UInt32(self)))
		} else {
			return 0
		}
	}

}
