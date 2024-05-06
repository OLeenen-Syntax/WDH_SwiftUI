//
//  ContentView.swift
//  WDH_SwiftUI
//
//  Created by Okan Leenen on 05.05.24.
//

import SwiftUI


struct ContentView: View {
    @State private var vorName = ""
    @State private var nachName = ""
    @State private var geburtstag = Date()
    @State private var newsLetter = false
    @State private var datenSchutz = "https://https://de.wikipedia.org/wiki/Datenschutz"
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Persoenliche Information")){
                    TextField("Vorname", text: $vorName)
                    TextField("Nachname", text: $nachName)
                    DatePicker("Geburtstag", selection: $geburtstag, displayedComponents: .date)
                } .accentColor(.green)
                
                Section(header: Text("Einstellungen")){
                    Toggle("Newsletter", isOn: $newsLetter)
                    Link("Datenschutz", destination: URL(string: datenSchutz)!)
                } .accentColor(.yellow)
            } .navigationTitle("Konto")
        }
        
    }
}

#Preview {
    ContentView()
}
