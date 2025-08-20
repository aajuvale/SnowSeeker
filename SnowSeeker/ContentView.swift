//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ahmed Juvale on 8/20/25.
//

import SwiftUI

struct User: Identifiable {
    var id = "Scott Summers"
}

struct ContentView: View {
    @State
    private var selectedUser: User? = nil

    @State
    private var isShowingUser = false

    var body: some View {
        Button("Tap Me") {
            selectedUser = User()
        }
        .sheet(item: $selectedUser) { user in
            Text(user.id)
                .presentationDetents([.medium, .large])
        }
//        .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) {
//            user in
//            Button(user.id) { }
//        }
    }
}

#Preview {
    ContentView()
}
