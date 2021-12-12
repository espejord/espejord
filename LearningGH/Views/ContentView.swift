//
//  ContentView.swift
//  LearningGH
//
//  Created by Kjell Espejord on 06/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Bank", "Aviser", "Telefon","Medisiner", "Nødtelefon"]
    var body: some View {
        
        NavigationView  {
            List (array, id: \.self)  { arrayElement in
                NavigationLink(
                    destination: Text("her"),
                
            label: {
                
                Text(arrayElement)
                
            })
                
                
                
            }.navigationBarTitle(Text("VALG"))
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
