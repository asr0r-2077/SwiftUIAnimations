//
//  Animation4.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 09/03/24.
//

import SwiftUI

struct Animation4: View {
    @State private var change = false
    @State private var changeColor = false
    var body: some View {
        NavigationStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(changeColor ? .blue : .teal)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right").foregroundStyle(.black))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .bottom)
                .animation(.easeInOut, value: change)
                .animation(.easeOut, value: changeColor)
                .onTapGesture {
                    changeColor.toggle()
                }
            Spacer()
            Button("Change") {
                change.toggle()
            }
        }
    }
}

#Preview {
    Animation4()
}
