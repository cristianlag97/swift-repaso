//
//  ContentView.swift
//  darkAndLightMode
//
//  Created by Cristian David Laguna Aldana on 4/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentPage: String = "ThemeView"
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        TabView{
           ThemeView()
            .tag("ThemeView")
            .tabItem {
                Text("theme")
                Image(systemName: "paintpalette")
            }
            
            SelectIconView()
             .tag("ThemeView")
             .tabItem {
                 Text("theme")
                 Image(systemName: "swift")
             }
            
            VibratesView()
             .tag("vibrate")
             .tabItem {
                 Text("Vibrate")
                 Image(systemName: "swift")
             }
        }
    }
}

#Preview {
    ContentView()
}
