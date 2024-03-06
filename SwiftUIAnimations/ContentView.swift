//
//  ContentView.swift
//  SwiftUI_Animations
//
//  Created by Asror Alikulov on 05/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Animation 1") {
                    Animation1()
                }
                NavigationLink("Animation 2") {
                    Animation2()
                }
            }
            .navigationTitle("Animations")
        }
    }
}

#Preview {
    ContentView()
}
