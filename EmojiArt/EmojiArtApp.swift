//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Екатерина К on 04.07.2023.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
