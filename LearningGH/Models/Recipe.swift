//
//  Recipe.swift
//  LearningGH
//
//  Created by Kjell Espejord on 12/12/2021.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name: String
    var image: String
    
    
}
