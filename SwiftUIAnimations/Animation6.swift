//
//  Animation6.swift
//  SwiftUIAnimations
//
//  Created by Asror Alikulov on 09/03/24.
//

import SwiftUI

struct Animation6: View {
    @State private var change = false
    @State private var circleProgress: CGFloat = 1.0
    var body: some View {
        NavigationStack {
            Button("Change") {
                change.toggle()
                circleProgress = change ? 0.25 : 1
            }
            .font(.title)
            Circle()
                .trim(from: 0, to: circleProgress)
                .stroke(.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round, lineJoin: .round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .padding(40)
                .animation(.default, value: change)
        }
    }
}

#Preview {
    Animation6()
}
