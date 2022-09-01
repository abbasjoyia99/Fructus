//
//  StartButtonView.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("onBoarding") private var isOnBoardingViewActive = true
    var body: some View {
        Button () {
            isOnBoardingViewActive = false
        } label: {
            HStack (spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }
            .imageScale(.large)
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background (
                Capsule()
                .stroke(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
