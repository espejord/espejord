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
            
            VStack  {
                
               Image ("calm")
                    .resizable()
                    .padding(/*@START_MENU_TOKEN@*/.all, 40.0/*@END_MENU_TOKEN@*/)
            
                
            }
            
                .tabItem   {
                    VStack   {
                    Image(systemName: "star.fill")
                    Text("Featured")
                  
                }
                    Spacer()
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
