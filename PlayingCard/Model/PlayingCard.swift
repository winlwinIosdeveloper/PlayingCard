//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Win Lwin on 17/07/2023.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
	var description: String {
		return "\(suit) \(rank)"
	}
	
	var suit: Suit
	var rank: Rank
	
	enum Suit: String, CustomStringConvertible {
		var description: String {
			switch self {
			case .heart: return "❤️"
			case .club: return "♣️"
			case .diamond: return "♦️"
			case .spade: return "♠️"
			}
		}
		
		
		case diamond = "♦️"
		case heart = "❤️"
		case spade = "♠️"
		case club = "♣️"
		
		static var allSuit: [Suit] = [.diamond, .heart, .club, .spade ]
	}
	
	enum Rank: Int, CustomStringConvertible {
		case ace = 1
		case two = 2
		case three = 3
		case four = 4
		case five = 5
		case six = 6
		case seven = 7
		case eight = 8
		case nine = 9
		case ten = 10
		case jack = 11
		case king = 12
		case queen = 13
		
		static var allRank: [Rank] = [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .king, .queen]
		
		var description: String {
			switch self {
			case .ace: return "1"
			case .two: return "2"
			case .three: return "3"
			case .four: return "4"
			case .five: return "5"
			case .six: return "6"
			case .seven: return "7"
			case .eight: return "8"
			case .nine: return "9"
			case .ten: return "10"
			case .jack: return "J"
			case .queen: return "Q"
			case .king: return "K"
			}
		}
		
	}
}
