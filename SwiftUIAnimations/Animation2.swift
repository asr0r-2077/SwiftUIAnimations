//
//  Animation2.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 06/03/24.
//

import SwiftUI

struct Animation2: View {
    @State private var change = false
    var body: some View {
        NavigationStack {
            Text("With Animation")
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .padding(.horizontal)
                .padding(.bottom)
                .foregroundStyle(change ? .blue : .teal)
                .animation(.easeOut, value: change)
            Text("Without Animation")
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .padding(.horizontal)
                .foregroundStyle(change ? .blue : .teal)
//                .animation(.easeIn, value: change)
            Spacer()
            Button("Change") {
                change.toggle()
            }
            
        }
    }
}

#Preview {
    Animation2()
}
