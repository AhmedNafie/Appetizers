//
//  AppetizerDetailsScreen.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 06/01/2025.
//

import SwiftUI

struct AppetizerDetailsScreen: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
            }
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", count: appetizer.calories)
                    NutritionInfo(title: "Carbs", count: appetizer.carbs)
                    NutritionInfo(title: "Protein", count: appetizer.protein)
                }
            }

            Spacer()

            primaryColorButton(title: "$\(appetizer.price,specifier: "%.2f") - Add to Order") {
                order.add(appetizer)
                isShowingDetail = false
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            XButton(bool: $isShowingDetail)
        }
    }
}

#Preview {
    AppetizerDetailsScreen(appetizer: Appetizer.sampleAppetizer, isShowingDetail: .constant(true))
}

