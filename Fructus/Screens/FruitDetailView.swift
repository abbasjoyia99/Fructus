//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI

struct FruitDetailView: View {
    var fruite:Fruite
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - HEADER
                    FruitHeaderView(fruit:fruite)
                    VStack(alignment:.leading,spacing: 20) {
                        // MARK: - TITLE
                        Text(fruite.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruite.gradientColors[1])
                        // MARK: - HEADLINE
                        Text(fruite.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // MARK: - NUTRIENTS
                        FruitsNutrientsView(fruit: fruite)
                        // MARK: - SUBHEADLINE
                        Text("Learn more about \(fruite.title)".uppercased())
                            .foregroundColor(fruite.gradientColors[1])
                        // MARK: - DESCRIPTION
                        
                        Text(fruite.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }
                    .padding(.horizontal,40)
                    .frame(maxWidth:640,alignment: .center)
                    
                    
                }//:VSTACK
                .navigationTitle(fruite.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//:SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruite: fruitesData[0])
    }
}
