//
//  CoordinatorService.swift
//  SplittableCoordinator
//
//  Created by Dmitriy Soloshenko on 19.03.2025.
//

import SwiftUI

let Coordinator = CoordinatorService()

class CoordinatorService: ObservableObject {
    
    enum Step: Hashable {
        case a(_ val: CoordinatorA)
        case b(_ val: CoordinatorB)
        
        var view: some View {
            Group {
                switch self {
                    case .a(let value): value.view
                    case .b(let value): value.view
                }
            }
        }
    }
    
    @Published var path: [Step] = []
    
    func next(_ step: Step) {
        Task {
            await MainActor.run {
                withAnimation {
                    self.path += [step]
                }
            }
        }
    }
    
    func root() {
        Task {
            await MainActor.run {
                withAnimation {
                    self.path = []
                }
            }
        }
    }
}
