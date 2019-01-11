//
//  Model.swift
//  PlayerInfoApp
//
//  Created by Harsh Tuwar on 2019-01-04.
//  Copyright © 2019 HarshTuwar. All rights reserved.
//

import Foundation


class Model{
    
    //to store the player data
    var players: [AnyObject]!
    
    //initialize the class
    init(){
        
        //read the plist file to get the data
        
        if let path = Bundle.main.path(forResource: "stats2019qb", ofType: "plist"){
            players = NSArray(contentsOfFile: path) as? [[String: Any]] as [AnyObject]!
        } else {
            players = [AnyObject]()
        }
    }
    
}
