//
//  CoordinatorA.swift
//  SplittableCoordinator
//
//  Created by Dmitriy Soloshenko on 19.03.2025.
//

import SwiftUI


enum CoordinatorA: String {
    case a, b, c
    
    var view: some View {
        Group {
            let title = "Coordinator A, screen: \(self.rawValue)."
            switch self {
                case .a: DummyView(title, .red)
                case .b: DummyView(title, .blue)
                case .c: DummyView(title, .yellow)
            }
        }
    }
}
