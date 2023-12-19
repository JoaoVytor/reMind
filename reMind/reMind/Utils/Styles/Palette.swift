//
//  Palette.swift
//  reMind
//
//  Created by João Vitor Sousa on 18/12/23.
//

import Foundation
import SwiftUI

enum Palette: String {
    case label
    case aquamarine
    case background
    case lavender
    case mauve
    case error
    case success
    
    var render: Color {
        Color(self.rawValue)
    }
}
