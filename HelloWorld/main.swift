//
//  main.swift
//  HelloWorld
//
//  Created by Zenika on 06/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import Foundation


func input() -> Int {
    return Int(readLine()!)!
}

func selectClasse(n : Int) -> Classe{
    if n == 1{
        return Classe.Archer
    }
    if n == 2 {
        return Classe.Guerrier
    }
    if n == 3 {
        return Classe.Mage
    }
    return Classe.Archer
}

func selectArme(n : Int) -> Arme{
    if n == 1{
        return Arc()
    }
    if n == 2 {
        return Epee()
    }
    if n == 3 {
        return Sceptre()
    }
    return Arc()
}


func continueGame(perso1:Personnage, perso2:Personnage) -> Bool{
    return perso1.getVie() > 0 && perso2.getVie() > 0
}

func nowWhat(perso : Personnage){
    print(perso.toString())
    print("Quel choix ?")
    print("1. Attaquer")
    print("2. Améliorer son arme")
}

func action(sujet :Personnage, action : Int, objet :Personnage){
    if action == 1{
        sujet.attaquer(perso : objet)
    }
    if action == 2 {
        sujet.powerUpArme(power : 2)
    }
}

func game(perso1:Personnage,perso2:Personnage){
    repeat{
        nowWhat(perso:perso1)
        action(sujet:perso1, action:input(), objet:perso2)
        
        nowWhat(perso:perso2)
        action(sujet:perso2, action:input(), objet:perso1)
        
    } while continueGame(perso1:perso1,perso2:perso2)
    
    print(
        "Fin du game \n le vainqueur est : "+String( perso1.getVie()>0 ? perso1.nom :perso2.nom )
    )
}


print("--- Menu ---")


var choice : [Int] = []

for var i in 0...1{
    repeat{
        print("Classe du personnage "+String(i+1))
        print("1. Archer")
        print("2. Guerrier")
        print("3. Mage")
        print("Quel est votre choix ?")
        print("")
        if i == 0{
            choice = choice+[input()]
        }
        else if i == 1{
            choice = choice+[input()]
        }
    }while choice[i] < 1 || choice[i] > 3
}



game(
    perso1:Personnage(
        nom:"Personnage1"
        ,classe: selectClasse(n:choice[0])
        ,arme: selectArme(n:choice[0])
        ,vie : 100
    ),
    perso2:Personnage(
        nom:"Personnage2"
        ,classe: selectClasse(n:choice[1])
        ,arme: selectArme(n:choice[1])
        ,vie : 100
    )
)




