//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ahmed Juvale on 8/20/25.
//

import SwiftUI

struct UserView: View {

    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct ContentView: View {
//    @Environment(\.horizontalSizeClass)
//    var horizontalSizeClass

    var body: some View {
//        if horizontalSizeClass == .compact {
//            VStack {
//                UserView()
//            }
//        } else {
//            HStack {
//                UserView()
//            }
//        }

        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)

            Circle()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
