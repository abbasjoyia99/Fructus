//
//  HomeView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    var fruites: [Fruite] = fruitesData
    
    // MARK: - Body
    
    var body: some View {
       
        NavigationView {
            
            List (fruites) { item in
                NavigationLink(destination:FruitDetailView(fruite: item)) {
                    FruitCellView(fruit: item)
                        .padding(.vertical,4)
                }
                
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
            Button(action: {
                isShowingSettings = true
            }, label: {
             Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSettings) {
                SetttingsView()
            }
            )
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
