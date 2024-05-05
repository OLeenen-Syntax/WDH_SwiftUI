//
//  main.swift
//  CMD
//
//  Created by Okan Leenen on 05.05.24.
//

import Foundation

// WDH Lists from last week
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
    
    
    
//    print(x)
//    print(y)

//
//
//

// ForEach
var a: [Int] = [15, 23, 35, 44, 45, 55]
let b: [Int] = [15, 23, 35, 44, 45, 55]

// jedes Element von der Liste ausgeben
a.forEach { element in
    print(element)
}

// Elemente verdoppeln aus der alten Liste verdoppeln und in der neuen Liste speichern
var doubledArray: [Int] = []
a.forEach { element in
    doubledArray.append(element * 2)
}
print(doubledArray)


// Summe aus der Liste berechnen
var sum = 0
a.forEach { element in
    sum += element
}
print("Summe: \(sum)")

// Elemente filtern mit Modulo
a.forEach { element in
    if element % 2 == 0 {
        print(element)
    }
}

// Elemente filtern mit groesser/kleiner
a.forEach { element in
    if element < 50 {
        print(element)
    }
}

// Index und Wert ausgeben
a.enumerated().forEach { index, element in
    print("Index: \(index), Wert: \(element)")
}

// andere Schreibweise
for (index, element) in a.enumerated() {
    print("Index: \(index), Element: \(element)")
}

// Elemente mit bestimmter Bedingung zaehlen
var count = 0
a.forEach { element in
    if element > 30 {
        count += 1
    }
}
print("Anzahl Elemente größer als 30: \(count)")


// Toggles
var isSoundEnabled = true

func toggleSound() {
    isSoundEnabled.toggle()
    if isSoundEnabled {
        print("Sound ist jetzt eingeschaltet.")
    } else {
        print("Sound ist jetzt ausgeschaltet.")
    }
}

toggleSound()
toggleSound()

// ein Beispiel mit enum
enum State {
    case off
    case low
    case medium
    case high
}

var currentState: State = .off

func toggleState() {
    switch currentState {
    case .off:
        currentState = .low
    case .low:
        currentState = .medium
    case .medium:
        currentState = .high
    case .high:
        currentState = .off
    }
}

// Zustand wechseln
toggleState()
print(currentState) // low

toggleState()
print(currentState) // medium

toggleState()
print(currentState) // high

toggleState()
print(currentState) // off

// TextField
