//
//  RecipeDetailView.swift
//  LearningGH
//
//  Created by Kjell Espejord on 13/12/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    var body: some View {
        
        ScrollView   {
            VStack (alignment: .leading) {
            Image(recipe.image)
                .resizable()
                .padding(.horizontal)
                .scaledToFill()
                .clipped()
            
            
            VStack (alignment: .leading)   {
                
               
                
                ForEach (recipe.ingredients, id: \.self)  { item in
                    Text(item)
                        .font(.caption)
                        .padding([.top, .leading, .bottom], 2.0)
                    
            }
            }
    }
}
    }

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
}
