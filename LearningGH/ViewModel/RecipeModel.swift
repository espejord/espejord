//
//  RecipeModel.swift
//  LearningGH
//
//  Created by Kjell Espejord on 12/12/2021.
//

import Foundation

class RecipeModel: ObservableObject  {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
        
    }
    
    
    }
    

