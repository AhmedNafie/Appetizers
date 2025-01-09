//
//  TabBarModifier.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 09/01/2025.
//

import SwiftUI

extension View {
    func tabBarVisibility(_ isVisible: Bool) -> some View {
        self.modifier(TabBarModifier(isVisible: isVisible))
    }
}

struct TabBarModifier: ViewModifier {
    var isVisible: Bool

    func body(content: Content) -> some View {
        content
            .padding(.bottom, isVisible ? 0 : -80) // Adjust this value based on your tab bar height
            .animation(.easeInOut, value: isVisible)
    }
}
