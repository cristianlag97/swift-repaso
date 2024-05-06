//
//  ViewModel.swift
//  darkAndLightMode
//
//  Created by Cristian David Laguna Aldana on 4/05/24.
//

import Foundation
import UIKit

class  ViewModel {
    static let shared: ViewModel = ViewModel()
    
    private init() {
        
    }
    
    func vibrate(type: UINotificationFeedbackGenerator.FeedbackType){
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(type)
    }
    
    func inpact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let feedbackGenerator = UIImpactFeedbackGenerator(style: style)
        feedbackGenerator.impactOccurred()
    }
    
}
