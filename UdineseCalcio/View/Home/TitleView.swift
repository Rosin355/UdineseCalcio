//
//  TitleView.swift
//  UdineseCalcio
//
//  Created by Romesh Singhabahu on 20/01/21.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}


// MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Maglia gara")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
