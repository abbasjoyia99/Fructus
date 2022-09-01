//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties
    @State private var fruites : [Fruite] = fruitesData
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach (fruites[0...5]) { item in
                
                OnBoardingCardView(fruite: item)
                
            }
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}
// MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
