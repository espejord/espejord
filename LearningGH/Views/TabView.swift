//
//  TabView.swift
//  LearningGH
//
//  Created by Kjell Espejord on 07/12/2021.
//

import SwiftUI

struct MinTabView: View {
    var body: some View {
        
        TabView  {
            
            Text("Featured View")
                .tabItem   {
                    VStack   {
                    Image(systemName: "star.fill")
                    Text("Featured")
               
                
                
                }
            }
            ContentView()
                .tabItem  {
                    VStack   {
                        Image(systemName: "list.bullet")
                        Text("Lister")
                        
                        
                    }
                    
                }
    }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MinTabView()
    }
}
