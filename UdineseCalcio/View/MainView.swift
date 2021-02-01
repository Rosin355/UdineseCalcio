//
//  MainView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 17/12/20.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @StateObject var menuData = MenuViewModel()
    @Namespace var animation
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 0, content: {
            
            // Drawer...
            Drawer(menuData: menuData, animation: animation)
            
            // Main View...
            
            TabView(selection: $menuData.selectedMenu){
                ShopView()
                    .tag("Shop")
            }
            .frame(width: UIScreen.main.bounds.width)
            
        })
        
        // INSIDE FRAME MAX
        .frame(width: UIScreen.main.bounds.width)
        offset(x: menuData.showDrawer ? 125 : -125)
        .overlay(
            ZStack{
                if !menuData.showDrawer{
                    DrawerCloseButton(animation: animation)
                        .padding()
                }
            },
            alignment: .topLeading
        )
        .environmentObject(menuData)    }
}

// MARK: - PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 12 Pro")
            
    }
}
