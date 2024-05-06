//
//  main.swift
//  CMD
//
//  Created by Okan Leenen on 05.05.24.
//

import Foundation

// MARK: - Wiederholung von letzter Woche
var x: [Int] = [15, 23, 35, 44, 45, 55]
let y: [Int] = [15, 23, 35, 44, 45, 55]

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

// Ausgabe
print(x)
print(y)



// MARK: - ForEach
// jedes Element von der Liste ausgeben
x.forEach{ element in print(element) }

//// Elemente aus der Liste x mit x2 multiplizieren und in einer neuen Liste speichern
var z: [Int] = []
x.forEach{ element in z.append(element * 2) }
print(z)

//// Summe aus der Liste berechnen
var summe = 0
x.forEach{ element in summe += element }
print(summe)

//// Elemente filtern mit Modulo
x.forEach{ element in
    if element % 2 == 0 {
        print(element)
    }
}

//// Elemente filtern mit groesser/kleiner als 30
x.forEach{ element in
    if element > 30{
        print(element)
    }
}

//// Index und Wert ausgeben
x.enumerated().forEach{ index, element in
    print("Index: \(index), Wert: \(element)")
}

//// alternative schreibweise mit for
for (index, element) in x.enumerated(){
    print("Index: \(index), Wert: \(element)")
}

// Elemente mit bestimmter Bedingung zaehlen
var count = 0
x.forEach{ element in
    if element < 30 {
        count += 1
        //count = count + 1
    }
}
print(count)

// MARK: - Toggles
// ein einfaches Beispiel
var isSoundEnabled = true

func toggleSound(){
    isSoundEnabled.toggle()
    if isSoundEnabled{
        print("Sound ist eingeschaltet")
    } else{
        print("Sound ist ausgeschaltet")
    }
}

toggleSound()
toggleSound()

// ein Beispiel mit enum
enum Heizung{
    case low, mittel, hoch, sehr_hoch
}

var currentState: Heizung = .low

func funcHeizung(){
    switch currentState {
    case .low:
        currentState = .mittel
    case .mittel:
        currentState = .hoch
    case .hoch:
        currentState = .sehr_hoch
    case .sehr_hoch:
        currentState = .low
    }
}



funcHeizung()
print(currentState)

funcHeizung()
print(currentState)

funcHeizung()
print(currentState)

funcHeizung()
print(currentState)
