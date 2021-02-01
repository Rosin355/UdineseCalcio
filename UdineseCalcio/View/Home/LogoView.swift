//
//  LogoView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 11/01/21.
//

import SwiftUI

struct LogoView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text("Udinese".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("campo")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)

        
            Text("Calcio".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
