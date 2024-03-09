//
//  Animation3.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 06/03/24.
//

import SwiftUI

struct Animation3: View {
    @State private var change = false
    var body: some View {
        NavigationStack {
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
                .frame(width: 100, height: 100)
                .offset( change
                    ? CGSize(width: 140, height: 0)
                    : CGSize(width: -140, height: 0))
                .animation(.default, value: change)
            Spacer()
            Button("Change") {
                change.toggle()
            }
        }
    }
}

#Preview {
    Animation3()
}
