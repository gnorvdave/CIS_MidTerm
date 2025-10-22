//
//  Dog.swift
//  DogBreeds
//
//  Created by Pacheco, Hellen on 10/9/21.
//

import SwiftUI

struct Subject : Codable, Identifiable {
    var id: String { name }
    var name: String
    var description: String
    var imageName: String
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage: String {
        "\(mainImage)-thumb"
        
    }
}
