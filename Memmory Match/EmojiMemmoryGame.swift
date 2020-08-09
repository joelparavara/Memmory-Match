//
//  EmojiMemmoryGame.swift
//  Memmory Match
//
//  Created by Joel Thomson on 8/9/20.
//  Copyright © 2020 Techcrus Labs. All rights reserved.
//

import SwiftUI

class EmojiMemmoryGame {
    private var model: MemmoryGame<String> = EmojiMemmoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemmoryGame<String> {
        let emojis : Array<String> = ["👻","🎃"]

        return MemmoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK:- Access to the Model
    
    var cards: Array<MemmoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK:- Intent(s)
    
    func choose(card: MemmoryGame<String>.Card) {
        model.choose(card: card)
    }
}



struct EmojiMemmoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
