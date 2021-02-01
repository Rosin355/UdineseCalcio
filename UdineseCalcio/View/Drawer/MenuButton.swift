//
//  MenuButton.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 01/02/21.
//

import SwiftUI

struct MenuButton: View {
    // MARK: - PROPERTIES
    var name: String
    var image: String
    var animation: Namespace.ID
    
    @Binding var selectedMenu: String
    
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectedMenu = name
            }
        }, label: {
            
            HStack(spacing: 15){
                
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
                Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
            }
            .padding(.horizontal)
            .padding(.vertical,12)
            .frame(width: 200,alignment: .leading)
            // Smooth Slide Animation.....
            .background(
                ZStack{
                    if selectedMenu == name{
                        Color.white
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                    else{
                        Color.clear
                    }
                }
            )
        })
    }
}


// MARK: - PREVIEW
struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
