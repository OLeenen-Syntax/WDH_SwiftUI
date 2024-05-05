//
//  Lists.swift
//  WDH_SwiftUI
//
//  Created by Okan Leenen on 05.05.24.
//

import Foundation

var x: [Int] = [15, 23, 35, 44, 45, 55]
let y: [Int] = [15, 23, 35, 44, 45, 55]

func main(){
    
    // Hinzufuegen eines neuen Elements
    x.append(15)
    
    // Zugriff auf ein Element des Arrays und Aenderung des Werts
    x[1] = 25
    
    // Entfernen eines Elements an einer bestimmten Position
    x.remove(at: 3)
    
    // Entfernen des letzten Elements in einer Liste
    x.removeLast()
    
    // Entfernen von allen Elementen einer Liste
    x.removeAll()
    
    

    print(x)
    print(y)

    
}
