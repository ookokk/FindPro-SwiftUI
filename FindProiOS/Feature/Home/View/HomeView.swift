//
//  HomeView.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import SwiftUI

protocol HomeViewDelegate: AnyObject {}

struct HomeView: View {
    weak var delegate: HomeViewDelegate?

    var body: some View {
        VStack {
                   Text("Home View")
                       .font(.system(size: 24, weight: .bold))
                       .multilineTextAlignment(.center)

               }
               .frame(maxWidth: .infinity, maxHeight: .infinity)
               .background(Color.white)
           }
    }

