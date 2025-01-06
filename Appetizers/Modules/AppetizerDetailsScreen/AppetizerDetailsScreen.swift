//
//  AppetizerDetailsScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 06/01/2025.
//

import SwiftUI

struct AppetizerDetailsScreen: View {
    let appetizer: Appetizer

    var body: some View {
        VStack {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 225)
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
    }
}

#Preview {
    AppetizerDetailsScreen(appetizer: Appetizer.sampleAppetizer)
}
