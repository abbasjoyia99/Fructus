//
//  OnBoardingCardView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI
// MARK: - Properties

// MARK: - Body

struct OnBoardingCardView: View {
    
    @State private var isAnimating: Bool = false
    
    var fruite:Fruite
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                // MARK: - IMAGE
                Image(fruite.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0:0.6)
                
                // MARK: - TITle
                Text(fruite.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // MARK: - HEADLINE
                Text(fruite.headline)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.horizontal,16)
                    .multilineTextAlignment(.center)
                    
                // MARK: - START BUTTON
                StartButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.15)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruite.gradientColors) , startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    
    }
}
// MARK: - Preview
struct OnBoardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCardView(fruite: fruitesData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
