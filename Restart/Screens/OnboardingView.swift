//
//  OnboardingView.swift
//  Restart
//
//  Created by Sravanthi Chinthireddy on 17/01/24.
//

import SwiftUI

struct OnboardingView: View {
//    MARK: Properties
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        })
    }
}

#Preview {
    OnboardingView()
}
