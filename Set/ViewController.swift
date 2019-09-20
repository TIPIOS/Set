//
//  ViewController.swift
//  Set
//
//  Created by Luc Derosne on 17/09/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabo()
    }
    
    func setLabo() {
        
        // déclarer
        let mesChiffres:Set = [12, 14, 8, 11, 27, 19]
        print("mesChiffres :  \(mesChiffres)")
        var mesMots:Set = ["oui", "non", "peut être","je ne sais pas", "oui" ]
        print("mesMots :  \(mesMots)\n")
        // accéder
        var monBouquet:Set = ["Lilas", "rose", "Jasmin", "Tulipe"]
        for fleur in monBouquet {
            print("\(fleur)")
        }
        // Ajouter
        monBouquet.insert("pensée")
        print("\nAjout : \(monBouquet)")
        // Supprimer
        monBouquet.remove("Jasmin")
        print("\nSuppression : \(monBouquet)")
        // Union
        let fruits: Set = ["banane", "orange", "raisin"]
        let legumes: Set = ["carotte", "radis", "navet"]
        let vegetaux: Set = ["chêne", "orange", "peuplier","navet", "raisin" ]
        print("\nunion : \(fruits.union(legumes))")
        // Intersection
        print("\nintersection : \(vegetaux.intersection(fruits))")
        // Soustraction (végétaux sans les fruits)
        print("\nsoustraction : \(vegetaux.subtracting(fruits))")
        // Différence symétrique
        let stars: Set = ["Janis Joplin", "Mère Thérésa", "Zazie", "Anaïs"]
        let femmes: Set = ["Jacqueline","Anaïs","Huguette", "Raymonde"]
        print("\nDifférence symétrique : \(stars.symmetricDifference(femmes))")
        let grille1: Set = [14, 8, 11, 9, 21, 19]
        let grille2: Set = [8, 14, 19, 9, 21, 11]
        print("\ngrilles identiques ? \(grille1==grille2)")
        // Opérations d'appartenance
        var stones: Set = ["Mick", "Keith",  "Toto", "Charlie", "Bill"]
        let voisins: Set = ["Marius", "Fanny", "Cesar", "Charlie"]
        print("\nisSubset:", stones.isSubset(of: voisins))
        let leaderStones: Set = ["Keith", "Mick"]
        print("isSubset2:", leaderStones.isSubset(of: stones))
        print("isSuperset:", stones.isSuperset(of: leaderStones))
        print("isDisjointWith:", stars.isDisjoint(with: femmes))
        print("isDisjointWith2:", grille1.isDisjoint(with: grille2))
        // fonctions et propriétés
        mesMots.removeAll()
        print("\nEnsemble vide ? \(mesMots.isEmpty)")
        print("\nPremier Stones : \(String(describing: stones.first))")
        let inverseStones = stones.reversed()
        print("\nstones : \(stones) ")
        print("reversed stones : \(inverseStones) ")
        print("combien de Stones : \(stones.count)")
        let premierVire = stones.removeFirst()
        print("moins de stones : \(premierVire) ")
        print(stones)
        if vegetaux.contains("navet") {
            print("non merci je suis allergique au navets")
        }
        print("\nStarAuHasard : \(String(describing: stars.randomElement()))")
        let grille1OK = grille1.allSatisfy({ $0 <= 50 && $0 > 0})
        print("grille correcte ? : \(grille1OK)")
        
    }
}
