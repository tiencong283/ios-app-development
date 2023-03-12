//
//  ContentView.swift
//  SwiftUINavigationIntro
//
//  Created by Ben Stone on 3/5/21.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Shrimp Chips"),
                    label: {
                        Text("Shrimp Chips")
                    })
                    .padding()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Peanut Butter"),
                    label: {
                        Text("Peanut Butter")
                    })
                    .padding()
                Spacer()
            }
            .navigationTitle(Text("Ligaya's Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
