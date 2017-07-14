//
//  Arme.swift
//  HelloWorld
//
//  Created by Zenika on 07/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import Foundation


class Arme {
    var power : Int
    
    init(power: Int) {
        self.power = power;
    }
    
    func powerUp(power : Int){
        self.power+=power;
    }
    
    func getPower() -> Int{
       return self.power;
    }
    
}
