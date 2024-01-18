//
//  HomeView.swift
//  Restart
//
//  Created by Sravanthi Chinthireddy on 17/01/24.
//

import SwiftUI

struct HomeView: View {
//    MARK: Properties
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    var body: some View {
        VStack(spacing: 20, content: {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                isOnboardingActive = true
            } label: {
                Text("Restart")
            }

        })
    }
}

#Preview {
    HomeView()
}
