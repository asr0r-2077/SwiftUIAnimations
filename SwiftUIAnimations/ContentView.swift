//
//  ContentView.swift
//  SwiftUI_Animations
//
//  Created by Asror Alikulov on 05/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var change = false
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text("EaseInOut")
                ExtractedView(change: $change)
                    .animation(.easeInOut(duration: 2), value: change)
                Text("EaseIn")
                ExtractedView(change: $change)
                    .animation(.easeIn(duration: 2), value: change)
                Text("EaseOut")
                ExtractedView(change: $change)
                    .animation(.easeOut(duration: 2), value: change)
                Text("Linear")
                ExtractedView(change: $change)
                    .animation(.linear(duration: 2), value: change)
                Spacer()
                Button("Change") {
                    change.toggle()
                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    @Binding var change: Bool
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundStyle(.orange)
            .offset(x: change ? 250 : 0)
    }
}
