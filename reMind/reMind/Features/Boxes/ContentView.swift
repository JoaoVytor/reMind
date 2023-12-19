//
//  ContentView.swift
//  reMind
//
//  Created by João Vitor Sousa on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BoxCardView(boxName: "Box", numberOfTerms: 10, theme: .mauve)
            .reBadge("10")
    }
}

#Preview {
    ContentView()
}
