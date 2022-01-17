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
        
        NavigationView {
            List(model.recipes)  { r in
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                               label: {
                HStack  {
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                    
                    
                }
                
                })
            }
            .navigationBarTitle("Hjelpe App")
        }
            
            
        }
        
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    

