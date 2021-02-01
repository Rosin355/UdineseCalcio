//
//  CategoryModel.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 19/01/21.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
