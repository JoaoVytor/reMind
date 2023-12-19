//
//  reBackground.swift
//  reMind
//
//  Created by João Vitor Sousa on 19/12/23.
//

import Foundation
import SwiftUI

struct reBackground: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [
                        Palette.aquamarine.render,
                        Palette.lavender.render,
                        Palette.mauve.render
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            Rectangle()
                .fill(Color.clear)
                .background(colorScheme == .light ? .regularMaterial : .regularMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    reBackground()
}
