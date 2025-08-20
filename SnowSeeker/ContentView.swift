//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ahmed Juvale on 8/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            NavigationLink("Primary") {
                Text("New View")
            }
        } detail: {
            Text("Content")
                .toolbar(.hidden, for: .navigationBar)
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
