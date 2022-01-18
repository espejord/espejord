//
//  DataService.swift
//  LearningGH
//
//  Created by Kjell Espejord on 12/12/2021.
//

import Foundation

class DataService {
    
    static func getLocalData()  -> [Recipe]  {
        
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else   {
            return [Recipe]()
        }
            let url = URL(fileURLWithPath: pathString!)
            
            do  {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
            
            // parse data
           
            do   {
            let recipeData = try decoder.decode([Recipe].self, from: data)
                for r in recipeData {
                    
                    r.id = UUID()
                }
                return recipeData
            }
            catch {
                print(error)
                
            }
        }
            catch  {
                print(error)
            }
        
       
        return [Recipe]()
    }
    
}

