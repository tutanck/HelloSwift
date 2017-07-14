//
//  Personne.swift
//  HelloWorld
//
//  Created by Zenika on 06/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import Foundation


class Personnage{
    var nom : String
    let classe : Classe
    let arme : Arme
    var vie : Int

    init(nom: String, classe: Classe, arme: Arme, vie: Int) {

        self.nom = nom
        
        self.classe = classe
        
        self.arme = arme
        
        self.vie = vie > 100 ? 100 : vie

    }

    func recevoirDegat(degat : Int){
        self.vie = vie > degat ? vie - degat : 0
    }
    
    func attaquer(perso : Personnage){
        perso.recevoirDegat(degat : self.arme.getPower())
    }
    
    func powerUpArme(power : Int){
        self.arme.powerUp(power : power);
    }
    
    func getVie() -> Int{
        return self.vie;
    }
    
    func toString() -> String {
        return "Nom : "+nom+"\nVie : "+String(vie)+"\nDégâts de son arme : "+String(arme.getPower())
    }

}
