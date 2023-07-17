//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Екатерина К on 04.07.2023.
//

import Foundation


struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable, Hashable { //какой к какому относится
        let text: String
        var x: Int // по центру экрана, чтобы можно было хорошо разместить background
        var y: Int
        var size: Int
        let id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) { //
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    init() { }
    
    
    private var uniqueEmojiId = 0
    mutating func addEmojis(_ text: String, at location: (x: Int, y: Int), size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x: location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
}
