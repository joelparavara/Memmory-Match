//
//  MemmoryGame.swift
//  Memmory Match
//
//  Created by Joel Thomson on 8/9/20.
//  Copyright © 2020 Techcrus Labs. All rights reserved.
//

import SwiftUI



struct MemmoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Card chosen is\(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)-> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, isMatched: false, content: content))
            cards.append(Card(id: pairIndex*2+1, isMatched: false, content: content))
        }
    }
    
    struct Card : Identifiable{
        var id: Int
        var isFaceUp : Bool = true
        var isMatched : Bool = true
        var content : CardContent
    }
}
