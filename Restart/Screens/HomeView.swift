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
    
    @State private var isAnimating: Bool = false
    var body: some View {
        VStack(spacing: 20, content: {
//            MARK: Header
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation.easeInOut(duration: 4)
                            .repeatForever()
                        ,value: isAnimating
                    )
            }//: ZStack
            
//            MARK: CENTER
            Text("The time that leads to mastery is dependant on the intesity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
//            MARK: FOOTER
            Spacer()
            
            Button {
                withAnimation {
                    playSound(sound: "success", type: "m4a2")
                    isOnboardingActive = true
                }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design:  .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        })
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

#Preview {
    HomeView()
}
