//
//  SelectIconView.swift
//  darkAndLightMode
//
//  Created by Cristian David Laguna Aldana on 4/05/24.
//

import SwiftUI

struct SelectIconView: View {
    
    let myIcons = ["0", "1", "2", "3", "4"]
    
    var body: some View {
        Form {
            Section("Change AppIcon") {
                ForEach(myIcons, id: \.self) { icon in
                    Button{
                        updateIcon(name: icon)
                    } label: {
                        HStack {
                            Image(icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width:100)
                            
                            Text(icon)
                                .bold()
                        }
                    }
                }
            }
        }
    }
    
    func updateIcon(name: String) {
        var iconName: String? = name
        
        if name == "0" {
            iconName = nil
        } else {
            iconName = "AppIcon " + name
        }
        
        UIApplication.shared.setAlternateIconName(iconName) { error in
            guard let error else {
                return
            }
            print("Error \(error.localizedDescription)")
        }
    }
    
}

#Preview {
    SelectIconView()
}
