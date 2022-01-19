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
            
            VStack(spacing: 0)  {
                
                ZStack {
             
                    
               Image ("calm")
                        .resizable()
                        .foregroundColor(Color.blue)
                        .padding(/*@START_MENU_TOKEN@*/.all, 43.0/*@END_MENU_TOKEN@*/)
                      
                   
                    VStack {
                        Text("VELG DET DU SKAL GJØRE")
                            .foregroundColor(Color.white)
                        
                        Text("APPEN GIR MULIGHET TIL")
                            .foregroundColor(Color.white)
                        
                        Text("Å KOMME INN PÅ AVISER,")
                            .foregroundColor(Color.white)
                        
                      Text("BANKER, VELG MEDISIN ETC.")
                            .foregroundColor(Color.white)
                    }
                }
            
                .tabItem  {
                    VStack  {
                      
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.black)
                            Text("start side")
                            
                     
                        Text("Featured")
                            .foregroundColor(Color.black)
                        
                            .padding()
                            .tabItem  {
                                VStack   {
                                    Image(systemName: "list.bullet")
                                    Text("VELG HER")
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                
                            }
                    
                    }
                    .padding(7.0)
                
               
                
                }
              
           
                }
            
                
            }
            
               
          
    }
    

    

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MinTabView()
    }
}
}
