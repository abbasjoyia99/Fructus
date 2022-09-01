//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Developer on 29/08/2022.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit:Fruite
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            HStack() {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical,20)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0: 0.6)
            } //: HEADER
            .frame(height:440)
            .background (
                LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            )
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit:fruitesData[0])
            .previewLayout(.sizeThatFits)
    }
}
