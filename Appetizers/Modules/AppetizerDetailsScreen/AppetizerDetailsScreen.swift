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

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)                
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)

            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }

                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }

                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }

            Spacer()

            Button {
                print("Test")
            } label: {
                Text("$\(appetizer.price,specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .background(.primaryGreen)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                        .opacity(0.6)

                    // Allowing user action outside of the circle
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.black)
                }
            }

        }
    }
}

#Preview {
    AppetizerDetailsScreen(appetizer: Appetizer.sampleAppetizer, isShowingDetail: .constant(true))
}
