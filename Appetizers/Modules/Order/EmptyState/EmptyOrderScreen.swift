//
//  EmptyOrderScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 09/01/2025.
//

import SwiftUI

struct EmptyOrderScreen: View {
    @State private var orderItems = Appetizer.orderAppetizers
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image("empty-order")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text("You have no items in your order.\nPlease add an appetizer!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()

            }
        }
    }

}

#Preview {
    EmptyOrderScreen()
}
