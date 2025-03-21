//
//  DummyView.swift
//  SplittableCoordinator
//
//  Created by Dmitriy Soloshenko on 19.03.2025.
//

import SwiftUI

struct DummyView: View {
    var title: String
    var color: Color
    
  
    init(_ title: String, _ color: Color) {
        self.title = title
        self.color = color
    }
    
    var body: some View {
        VStack {
            Text(self.title)
                .foregroundStyle(.black)
                .font(.headline)
            
            VStack(spacing: 24) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)

                Button("A a") { Coordinator.next(.a(.a)) }
                Button("A b") { Coordinator.next(.a(.b)) }
                Button("A c") { Coordinator.next(.a(.c)) }
                Button("B a") { Coordinator.next(.b(.a)) }
                Button("B b") { Coordinator.next(.b(.b)) }
                Button("B c") { Coordinator.next(.b(.c)) }
                Button("Root") { Coordinator.root() }

            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 0).fill(self.color).opacity(0.25)
        )
        .background(.white)
        .ignoresSafeArea()
        
    }
}

#Preview {
    DummyView("Preview", .white)
}
