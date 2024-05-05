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
    @State private var geburtsTag = Date()
    @State private var newsLetter = false
    @State private var datenSchutz = "https://https://de.wikipedia.org/wiki/Datenschutz"
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Persoenliche Information")){
                    TextField("Vorname", text: $vorName)
                    TextField("Nachname", text: $nachName)
                    DatePicker("Geburtstag", selection: $geburtsTag, displayedComponents: .date)
                        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                Section(header: Text("Einstellungen")) {
                    Toggle("Benachrichtigungen erhalten", isOn: $newsLetter)
                    Link("Datenschutz", destination: URL(string: datenSchutz)!)
                        .accentColor(.red)
                }
            }
            .navigationTitle("Konto")
        }
    }
}


#Preview {
    ContentView()
}
