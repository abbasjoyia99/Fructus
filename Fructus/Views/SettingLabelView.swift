//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Developer on 29/08/2022.
//

import SwiftUI

struct SettingLabelView: View {
    var lableText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(lableText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(lableText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
