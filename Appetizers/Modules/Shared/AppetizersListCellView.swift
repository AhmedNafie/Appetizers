//
//  AppetizersListCellView.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 04/01/2025.
//

import SwiftUI
import Kingfisher

struct AppetizersListCellView: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
            KFImage(URL(string: appetizer.imageURL))
                    .placeholder {
                        Image("food-placeholder") .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                            .cornerRadius(8)
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
         
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text("$\(appetizer.price,specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizersListCellView(appetizer: Appetizer.sampleAppetizer)
}
