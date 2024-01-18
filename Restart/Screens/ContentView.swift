//
//  ContentView.swift
//  Restart
//
//  Created by Sravanthi Chinthireddy on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    //    MARK: Properties

    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            }
            else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
