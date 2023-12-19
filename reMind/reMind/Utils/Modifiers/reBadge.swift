//
//  reBadge.swift
//  reMind
//
//  Created by João Vitor Sousa on 19/12/23.
//

import Foundation
import SwiftUI

struct reBadgeModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    @State var value: String
    
    private var textColor: Color {
        colorScheme == .light ? Palette.reWhite.render : Palette.reBlack.render
    }
    
    private var backgroundColor: Color {
        colorScheme == .light ? Palette.reBlack.render : Palette.reWhite.render
    }
    
    func body(content: Content) -> some View {
        if value.isEmpty {
            content
        } else {
            content
                .overlay {
                    GeometryReader { reader in
                        Text(value)
                            .padding(6)
                            .font(.body)
                            .foregroundColor(textColor)
                            .fontWeight(.semibold)
                            .background {
                                RoundedRectangle(cornerRadius: 17.5)
                                    .fill(backgroundColor)
                                    .frame(height: 35)
                                    .frame(minWidth: 35, maxWidth: 40)
                            }
                            .position(x: reader.size.width - 2, y: 2)
                    }
                }
        }
    }
    
}

extension View {
    func reBadge(_ value: String) -> some View {
        modifier(reBadgeModifier(value: value))
    }
}
