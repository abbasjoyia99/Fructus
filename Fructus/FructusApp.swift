//
//  FructusApp.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("onBoarding") private var isOnBoardingViewActive = true
    var body: some Scene {
        WindowGroup {
            
            if (isOnBoardingViewActive) {
               OnBoardingView()
            } else {
                HomeView()
            }
            
        }
    }
    
}
