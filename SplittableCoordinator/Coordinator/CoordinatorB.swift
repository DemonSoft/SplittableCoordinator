//
//  CoordinatorB.swift
//  SplittableCoordinator
//
//  Created by Dmitriy Soloshenko on 19.03.2025.
//

import SwiftUI

enum CoordinatorB: String {
    case a, b, c
    
    var view: some View {
        Group {
            let title = "Coordinator B, screen: \(self.rawValue)."
            switch self {
                case .a: DummyView(title, .orange)
                case .b: DummyView(title, .purple)
                case .c: DummyView(title, .brown)
            }
        }
    }
}
