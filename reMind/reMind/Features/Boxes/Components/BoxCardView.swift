//
//  BoxCardView.swift
//  reMind
//
//  Created by João Vitor Sousa on 19/12/23.
//

import SwiftUI

struct BoxCardView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Box name")
                .font(.title3)
                .fontWeight(.bold)
            
            Label("100 terms", systemImage: "doc.plaintext.fill")
                .padding(8)
                .background(Palette.reBlack.render.opacity(0.2))
                .cornerRadius(10)
        }
        .padding(16)
        .frame(width: 165, alignment: .leading)
        .background(Palette.aquamarine.render)
        .cornerRadius(10)
    }
}

#Preview {
    BoxCardView()
}
