//
//  ContentView.swift
//  LearningGH
//
//  Created by Kjell Espejord on 06/12/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        List(model.recipes)  { r in
            
            HStack  {
                Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .clipped()
                    .cornerRadius(5)
                Text(r.name)
                
                
            }
            
            
        }
       
        
            
            
        }
        
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    

