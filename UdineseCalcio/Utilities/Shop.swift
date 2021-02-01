//
//  Shop.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 31/01/21.
//

import Foundation
import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
