//
//  OnboardingView.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

import SwiftUI


protocol OnboardingViewDelegate {
    
}
struct OnboardingView: View {
    weak var delegate: OnboardingViewDelegate?

    var body: some View {
        VStack {
                   Text("Onboarding View")
                       .font(.system(size: 24, weight: .bold))
                       .multilineTextAlignment(.center)

               }
               .frame(maxWidth: .infinity, maxHeight: .infinity)
               .background(Color.white)
           }
    }
