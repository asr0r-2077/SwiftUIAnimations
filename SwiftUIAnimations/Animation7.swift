//
//  Animation7.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 09/03/24.
//

import SwiftUI

struct Animation7: View {
    @State private var change = false
    private var offsetValue = 200
    var body: some View {
        NavigationStack {
            Spacer()
            VStack(spacing: 1){
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: CGFloat(change ? 0 : -offsetValue))
                        
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: CGFloat(change ? 0 : -offsetValue))
                }
                .offset(x: -18)
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: CGFloat(change ? 0 : offsetValue))
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: CGFloat(change ? 0 : offsetValue))
                }
                .offset(x: 18)
            }
            .foregroundStyle(change ? .red : .orange)
            .rotationEffect(.degrees(change ? 0 : -90))
            .opacity(change ? 1 : 0)
            .animation(.default, value: change)
            Spacer()
            Button("Change") {
                change.toggle()
            }
            .font(.title)
        }
    }
}

#Preview {
    Animation7()
}
