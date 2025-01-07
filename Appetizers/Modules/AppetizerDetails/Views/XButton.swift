//
//  XButton.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 07/01/2025.
//

import SwiftUI

struct XButton: View {
    @Binding var bool: Bool
    
    var body: some View {
        Button {
            bool = false
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

#Preview {
    XButton(bool: .constant(true))
}
