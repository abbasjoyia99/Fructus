//
//  FruitCellView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI
import UIKit

struct FruitCellView: View {
    var fruit:Fruite
    
    var body: some View {
        HStack {
            HStack {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 80, height: 80, alignment: .leading)
            }
            .background(
                LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            )
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
            .cornerRadius(20)
            .padding()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
            
        }
        .background(.clear)
    }
}

struct FruitCellView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCellView(fruit: fruitesData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
