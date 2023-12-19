//
//  BoxCardView.swift
//  reMind
//
//  Created by João Vitor Sousa on 19/12/23.
//

import SwiftUI

enum BoxTheme: String {
    case aquamarine
    case mauve
    case lavender
    
    var render: Color {
        Color(self.rawValue)
    }
}

struct BoxCardView: View {
    @State private var boxName: String
    @State private var numberOfTerms: Int
    @State private var theme: BoxTheme
    
    init(boxName: String, numberOfTerms: Int, theme: BoxTheme) {
        self.boxName = boxName
        self.numberOfTerms = numberOfTerms
        self.theme = theme
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(boxName)
                .font(.title3)
                .fontWeight(.bold)
            
            Label("\(numberOfTerms) terms", systemImage: "doc.plaintext.fill")
                .padding(8)
                .background(Palette.reBlack.render.opacity(0.2))
                .cornerRadius(10)
        }
        .foregroundColor(Palette.reBlack.render)
        .padding(16)
        .frame(width: 165, alignment: .leading)
        .background(theme.render)
        .cornerRadius(10)
    }
}

#Preview {
    BoxCardView(boxName: "Math", numberOfTerms: 35, theme: .aquamarine)
}
