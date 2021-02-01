//
//  Drawer.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 01/02/21.
//

import SwiftUI

struct Drawer: View {
    // MARK: - PROPERTIES
    @StateObject var menuData: MenuViewModel
    
    var animation: Namespace.ID
   
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Spacer()
                
                // DISMISS BUTTON
                if menuData.showDrawer{
                    DrawerCloseButton(animation: animation)
                }
            }//: HSTACK
            .padding()

            VStack(alignment: .leading, spacing: 10, content: {
                
                Text("Ciao")
                    .font(.title2)
                
                Text("De Paul")
                    .font(.title)
                    .fontWeight(.heavy)
            })
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top,5)
            
            // MENUS BUTTONS
            VStack(spacing: 22){
                
                MenuButton(name: "Shop", image: "envelope.fill", animation: animation, selectedMenu: $menuData.selectedMenu)
            }
            .padding(.leading)
            .frame(width: 250, alignment: .leading)
            .padding(.top,30)
            
            Divider()
                .background(Color.white)
                .padding(.top,30)
                .padding(.horizontal,25)
            
            Spacer()
            
            MenuButton(name: "Sign Out", image: "rectangle.righthalf.inset.fill.arrow.right", animation: animation, selectedMenu: .constant(""))
                .padding(.bottom)
            
        }//: VSTACK
        .frame(width: 250)
        .background(
            colorDrawerBackground
            .ignoresSafeArea(.all, edges: .vertical)
        )
        
    }
}


// MARK: - PREVIEW
struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


// Close Button....

struct DrawerCloseButton: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    var animation: Namespace.ID
    
    var body: some View{
        
        Button(action: {
            withAnimation(.easeInOut){
                menuData.showDrawer.toggle()
            }
        }, label: {
            
            VStack(spacing: 5){
                
                Capsule()
                    .fill(menuData.showDrawer ? Color.white : Color.primary)
                    .frame(width: 35, height: 3)
                    .rotationEffect(.init(degrees: menuData.showDrawer ? -50 : 0))
                // Adjusting Like X....
                    // Based On Trail And Error...
                    .offset(x: menuData.showDrawer ? 2 : 0, y: menuData.showDrawer ? 9 : 0)
                
                VStack(spacing: 5){
                    
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)                        .frame(width: 35, height: 3)
                    
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.primary)                        .frame(width: 35, height: 3)
                    // Moving This View TO Hide...
                        .offset(y: menuData.showDrawer ? -8 : 0)
                }
                // Rotating Like XMark....
                .rotationEffect(.init(degrees: menuData.showDrawer ? 50 : 0))
            }
        })
        // Making It Little Small...
        .scaleEffect(0.8)
        .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
    }
}
