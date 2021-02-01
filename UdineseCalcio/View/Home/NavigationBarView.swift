//
//  NavigationBarView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 11/01/21.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimatied: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })//: BUTTON left
            
            Spacer()
            
            LogoView()
                .opacity(isAnimatied ? 1 : 0)
                .offset(x: 0, y: isAnimatied ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        //self.isAnimatied = true
                        isAnimatied.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: ZSTACK
                
            })//: BUTTON right
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
