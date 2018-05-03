//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Lasse Silkoset on 20.03.2018.
//  Copyright © 2018 Lasse Silkoset. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible
{
    
    var description: String { return "\(rank)\(suit)" }
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
        
        
        
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
        
        var description: String { return rawValue }
    }
    
    enum Rank: CustomStringConvertible {
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "J": return 12
            case .face(let kind) where kind == "J": return 13
            default: return 0
                
                
            }
        }
        
        static var all: [Rank] {
            var allRanks: [Rank] = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            
            return allRanks
        }
        
        var description: String {
            switch self {
            case .ace: return "A"
            case .numeric(let pips): return String(pips)
            case .face(let kind): return kind
            
                
            }
        }
    }
}















