//
//  VibratesView.swift
//  darkAndLightMode
//
//  Created by Cristian David Laguna Aldana on 4/05/24.
//

import SwiftUI

struct VibratesView: View {
    var body: some View {
        VStack {
            Text("UINotificationFeedbackGenerator")
                .bold()
            HStack {
                Button("Vibrate\n Success") {
                    ViewModel.shared.vibrate(type: .success)
                }
                .buttonStyle(.bordered)
                .tint(.green)
                Button("Vibrate\n Warning") {
                    ViewModel.shared.vibrate(type: .warning)
                }
                .buttonStyle(.bordered)
                .tint(.yellow)
                Button("Vibrate\n error") {
                    ViewModel.shared.vibrate(type: .error)
                }
                .buttonStyle(.bordered)
                .tint(.red)
            }
            .padding(.bottom, 32)
            
            Text("UIImpactFeedbackGenerator")
                .bold()
            HStack {
                Button("Light") {
                    ViewModel.shared.inpact(style: .light)
                }
                .buttonStyle(.bordered)
                .tint(.green)
                Button("Medium") {
                    ViewModel.shared.inpact(style: .medium)
                }
                .buttonStyle(.bordered)
                .tint(.yellow)
                Button("Heavy") {
                    ViewModel.shared.inpact(style: .heavy)
                }
                .buttonStyle(.bordered)
                .tint(.red)
            }
        }
    }
}

#Preview {
    VibratesView()
}
