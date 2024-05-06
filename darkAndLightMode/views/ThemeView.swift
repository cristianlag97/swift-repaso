//
//  ThemeView.swift
//  darkAndLightMode
//
//  Created by Cristian David Laguna Aldana on 4/05/24.
//

import SwiftUI

struct ThemeView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .font(.system(size: 100))
                .foregroundStyle(.tint)
                .tint(.red)
            Text("Hello, world!")
                .foregroundStyle(.largeTitleOnboarding)
                .font(.largeTitle)
                .bold()
        }
        .padding()
        .background(colorScheme == .dark ? .yellow : .green)
        .cornerRadius(20)
        .offset(y: -100)
    }
}

#Preview {
    ThemeView()
}
