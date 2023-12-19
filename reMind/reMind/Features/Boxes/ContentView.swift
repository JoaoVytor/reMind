//
//  ContentView.swift
//  reMind
//
//  Created by João Vitor Sousa on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Rectangle()
            .fill(Color.clear)
            .background(reBackground())
    }
}

#Preview {
    ContentView()
}
