//
//  DummyView.swift
//  SplittableCoordinator
//
//  Created by Dmitriy Soloshenko on 19.03.2025.
//

import SwiftUI

struct DummyView: View {
    var title: String
    init(_ title: String) {
        self.title = title
    }
    var body: some View {
        VStack {
            Text(self.title)
                .foregroundStyle(.black)
                .font(.headline)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)

                Button("A a") { Coordinator.next(.a(.a)) }.padding()
                Button("A b") { Coordinator.next(.a(.b)) }.padding()
                Button("A c") { Coordinator.next(.a(.c)) }.padding()
                Button("B a") { Coordinator.next(.b(.a)) }.padding()
                Button("B b") { Coordinator.next(.b(.b)) }.padding()
                Button("B c") { Coordinator.next(.b(.c)) }.padding()
                Button("Root") { Coordinator.root() }.padding()

            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}

#Preview {
    DummyView("Preview")
}
