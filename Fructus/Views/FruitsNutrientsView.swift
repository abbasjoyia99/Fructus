//
//  FruitsNutrientsView.swift
//  Fructus
//
//  Created by Developer on 29/08/2022.
//

import SwiftUI

struct FruitsNutrientsView: View {
    var fruit:Fruite
    let nutrients: [String] = ["Energy","Sugar","Fat","Proteins","Vitamins","Minerals"]
    
    var body: some View {
        
        GroupBox {
            // MARK: - Disclouser Group
            DisclosureGroup("Nutritional value per 100g") {
                ForEach (0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }//: BOX
    }
}

struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitesData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
