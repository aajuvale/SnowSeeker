//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ahmed Juvale on 8/20/25.
//

import SwiftUI

struct ContentView: View {
    @State
    private var searchText = ""

    let allNames = ["Scott", "Kurt", "Katherine", "Jean"]

    var filteredNames: [String] {
        if searchText.isEmpty {
            allNames
        } else {
            allNames.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
                .searchable(text: $searchText, prompt: "Look for something")
                .navigationTitle("Searching")
        }
    }
}

#Preview {
    ContentView()
}
