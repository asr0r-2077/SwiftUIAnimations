//
//  Animation5.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 09/03/24.
//

import SwiftUI

struct Animation5: View {
    @State private var scale = true
    @State private var changeColor = true
    var body: some View {
        NavigationStack {
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: scale ? 400 : 200, height: scale ? 200 : 100)
//                .foregroundStyle(.blue)
//                .animation(.easeInOut, value: scale)
            Button("Scale") {
                scale.toggle()
            }
            RoundedRectangle(cornerRadius: changeColor ? 20 : 12)
                .frame(width: 200, height: 100)
                .foregroundStyle(changeColor ? .teal : .blue)
                .scaleEffect(scale ? 1 : 0.5, anchor: .bottomLeading)
                .animation(.easeInOut, value: scale)
                .onTapGesture {
                    withAnimation {
                        changeColor.toggle()
                    }
                }
            Text("This is test text to see how scaleEffect() effects layout")
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    Animation5()
}
