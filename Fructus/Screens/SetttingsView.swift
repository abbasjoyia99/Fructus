//
//  SetttingsView.swift
//  Fructus
//
//  Created by Developer on 29/08/2022.
//

import SwiftUI

struct SetttingsView: View {
    // MARK: - Properties
    @AppStorage("onBoarding") var isOnBoardingViewActive: Bool = false
    @Environment(\.presentationMode) var presentationMode
   
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    // MARK: - Section 1
                    GroupBox(label:
                    SettingLabelView(lableText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment:.center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(0)
                            Text("Most fruits are naturally low in fat, sodium, calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    GroupBox(label: SettingLabelView(lableText: "CUSTOMIZATION" , labelImage: "paintbrush")) {
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn:$isOnBoardingViewActive)  {
                            if (isOnBoardingViewActive) {
                                Text("RESTARTED")
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("RESTART")
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                        
                        
                        
                    }
                    
                    // MARK: - Section 3
                    GroupBox (label: SettingLabelView(lableText: "Application", labelImage: "apps.iphone")
                    ) {
                       
                        SettingRowView(name: "Developer", content: "Abbas")
                        SettingRowView(name: "Designer", content: "Arslan")
                        SettingRowView(name: "Compatiblity",content: "ios 15")
                        
                        SettingRowView(name: "Website", linkLable: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLable: "@Abbasjoyia99", linkDestination: "twitter.com/abbasjoyia99")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version",content: "1.1.0")
                    }
                    
                    
                }//:VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                  Image(systemName: "xmark")
                })
                )
                .padding()
            }//: SCROLL
        } //: NAVIGATION
        
    }
}

struct SetttingsView_Previews: PreviewProvider {
    static var previews: some View {
        SetttingsView()
    }
}
