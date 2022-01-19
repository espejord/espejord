//
//  RecipeDetailView.swift
//  LearningGH
//
//  Created by Kjell Espejord on 13/12/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    @State var valgtPicker = 2
    var body: some View {
        
        ScrollView   {
            VStack (alignment: .leading) {
            Image(recipe.image)
                .resizable()
                .padding(.horizontal)
                .scaledToFill()
                .clipped()
                
                
            
            VStack (alignment: .leading)   {
                
                
                
    //            ForEach (recipe.ingredients, id: \.self)  { item in
     //               Text(item)
     //                   .font(.caption)
     //                   .padding([.top, .leading, .bottom], 2.0)
      //
                    
                        
      //              }
                
                Picker("", selection: $valgtPicker)  {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    
            }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width:160)
            }
            .padding()
                VStack(alignment: .leading) {
                    Text("Dine Valg: ")
                  
                        
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

