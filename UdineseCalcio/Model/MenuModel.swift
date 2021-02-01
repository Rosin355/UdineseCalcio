//
//  MenuModel.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 01/02/21.
//

import SwiftUI

class MenuViewModel: ObservableObject{
    
    //Default...
    @Published var selectedMenu = "Shop"
    
    // Show...
    @Published var showDrawer = false
}
