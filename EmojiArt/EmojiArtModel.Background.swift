//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by Екатерина К on 04.07.2023.
//

import Foundation


extension EmojiArtModel {
    enum Background: Equatable {
        case blank
        case url(URL)
        case imageData(Data)
        
        var url: URL? {
            switch self {
            case .url(let url): return url
            default: return nil
            }
        }
        
        var imageData: Data? {
            switch self {
            case .imageData(let data): return data
            default: return nil
            }
        }
    }
}
