//
//  FruiteModel.swift
//  Fructus
//
//  Created by Developer on 26/08/2022.
//

import Foundation
import SwiftUI
// MARK: - FRUITS DATA MODEL
struct Fruite:Identifiable {
    var id = UUID()
    let title:String
    let headline:String
    let image:String
    let gradientColors:[Color]
    let description:String
    var nutrition:[String]
}
