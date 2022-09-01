//
//  SettingRowView.swift
//  Fructus
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct SettingRowView: View {
    var name: String
    var content: String? = nil
    var linkLable:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLable != nil && linkDestination != nil) {
                    Link(linkLable!, destination: URL(string: "https://\(linkDestination!)")!)
                } else  {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
                
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        SettingRowView(name: "Developer", content: "Abbas")
            .previewLayout(.fixed(width: 375, height: 60))
            .preferredColorScheme(.dark)
            .padding()
        }
    }
}
