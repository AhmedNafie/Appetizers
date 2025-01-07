//
//  NutritionInfo.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import SwiftUI

struct NutritionInfo: View {
    var title: String
    var count: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(count)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    NutritionInfo(title: "Carbs", count: 46)
}
