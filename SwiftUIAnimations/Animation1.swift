//
//  Animation1.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 06/03/24.
//

import SwiftUI

struct Animation1: View {
    @State private var change = false
    var body: some View {
        NavigationStack {
            HStack {
                VStack(alignment: .center) {
                    Text("EaseInOut")
                    SampleCircle(change: $change)
                        .animation(.easeInOut(duration: 2), value: change)
                    Text("EaseIn")
                    SampleCircle(change: $change)
                        .animation(.easeIn(duration: 2), value: change)
                    Text("EaseOut")
                    SampleCircle(change: $change)
                        .animation(.easeOut(duration: 2), value: change)
                    Text("Linear")
                    SampleCircle(change: $change)
                        .animation(.linear(duration: 2), value: change)
                    Spacer()
                    Button("Change") {
                        change.toggle()
                    }
                }
                .padding()
                Spacer()
                    .navigationTitle("Animation 1")
            }
        }
    }
}

struct SampleCircle: View {
    @Binding var change: Bool
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundStyle(.orange)
            .offset(x: change ? 250 : 0)
    }
}

#Preview {
    Animation1()
}
